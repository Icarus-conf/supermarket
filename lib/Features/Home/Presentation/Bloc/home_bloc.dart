import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supermarket/Core/enums/screen_status.dart';
import 'package:supermarket/Core/error/failures.dart';
import 'package:supermarket/Features/Home/Data/models/cart_model.dart';
import 'package:supermarket/Features/Home/Data/models/product_model.dart';
import 'package:supermarket/Features/Home/Domain/repository/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  final FirebaseAuth auth;

  HomeBloc(this.homeRepository, this.auth) : super(const HomeState()) {
    on<FetchProducts>((event, emit) async {
      emit(state.copyWith(productsStatus: ScreenStatus.loading));
      final result = await homeRepository.fetchProducts();

      result.fold(
        (failure) {
          emit(state.copyWith(
            productsStatus: ScreenStatus.failure,
            productsFailures: failure,
          ));
        },
        (products) {
          emit(state.copyWith(
            productsStatus: ScreenStatus.success,
            products: products,
          ));
        },
      );
    });

    on<AddToCart>((event, emit) async {
      emit(state.copyWith(addToCartStatus: ScreenStatus.loading));
      try {
        final userId = auth.currentUser?.uid;
        if (userId == null) {
          emit(state.copyWith(
            addToCartStatus: ScreenStatus.failure,
            addToCartFailures: RemoteFailures("User is not logged in."),
          ));
          return;
        }

        final cartItem = CartItem(
          userId: userId,
          productId: event.item.productId,
          name: event.item.name,
          price: event.item.price,
          imageUrl: event.item.imageUrl,
          quantity: event.item.quantity,
        );

        final result = await homeRepository.addToCart(cartItem);
        result.fold(
          (failure) {
            emit(state.copyWith(
              addToCartStatus: ScreenStatus.failure,
              addToCartFailures: failure,
            ));
          },
          (_) {
            emit(state.copyWith(
              addToCartStatus: ScreenStatus.success,
            ));
          },
        );
      } catch (e) {
        log(e.toString());
        emit(state.copyWith(
          addToCartStatus: ScreenStatus.failure,
          addToCartFailures: RemoteFailures(e.toString()),
        ));
      }
    });

    on<UpdateQuantity>((event, emit) {
      if (state.productsStatus == ScreenStatus.success) {
        final updatedProducts = List<ProductModel>.from(state.products!);

        final productIndex =
            updatedProducts.indexWhere((p) => p.id == event.productId);
        if (productIndex != -1) {
          updatedProducts[productIndex] =
              updatedProducts[productIndex].copyWith(quantity: event.quantity);
          emit(state.copyWith(products: updatedProducts));
        }
      }
    });

    on<FetchCartItems>((event, emit) async {
      emit(state.copyWith(
        cartItemsStatus: ScreenStatus.loading,
      ));
      try {
        final userId = auth.currentUser?.uid;
        if (userId == null) {
          emit(state.copyWith(
            cartItemsStatus: ScreenStatus.failure,
            cartItemsFailures: RemoteFailures("User is not logged in."),
          ));
          return;
        }

        final cartItemsResult = await homeRepository.fetchCartItems(userId);
        cartItemsResult.fold(
          (failure) {
            emit(state.copyWith(
              cartItemsStatus: ScreenStatus.failure,
              cartItemsFailures: failure,
            ));
          },
          (cartItems) {
            // Group the items by productId and sum the quantities
            final groupedItems = <String, CartItem>{};
            for (var item in cartItems) {
              if (groupedItems.containsKey(item.productId)) {
                final existingItem = groupedItems[item.productId]!;
                final updatedItem = existingItem.copyWith(
                  quantity: existingItem.quantity + item.quantity,
                );
                groupedItems[item.productId] = updatedItem;
              } else {
                groupedItems[item.productId] = item;
              }
            }

            // Convert the grouped map back to a list
            final updatedCartItems = groupedItems.values.toList();

            emit(state.copyWith(
              cartItemsStatus: ScreenStatus.success,
              cartItems: updatedCartItems,
            ));
          },
        );
      } catch (e) {
        log(e.toString());
        emit(state.copyWith(
          cartItemsStatus: ScreenStatus.failure,
          cartItemsFailures: RemoteFailures(e.toString()),
        ));
      }
    });

    on<DeleteFromCart>((event, emit) async {
      emit(state.copyWith(deleteFromCartStatus: ScreenStatus.loading));

      final userId = FirebaseAuth.instance.currentUser?.uid;
      if (userId == null) {
        emit(state.copyWith(
            deleteFromCartStatus: ScreenStatus.failure,
            deleteFromCartFailures: RemoteFailures("User not logged in.")));
        return;
      }

      final result =
          await homeRepository.deleteCartItem(userId, event.productId);

      result.fold(
        (failure) => emit(state.copyWith(
            deleteFromCartStatus: ScreenStatus.failure,
            deleteFromCartFailures: failure)),
        (_) {
          final updatedCartItems = state.cartItems
              ?.where((item) => item.productId != event.productId)
              .toList();
          emit(state.copyWith(
            deleteFromCartStatus: ScreenStatus.success,
            cartItems: updatedCartItems,
          ));
        },
      );
    });
  }
}
