part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(ScreenStatus.init) ScreenStatus productsStatus,
    List<ProductModel>? products,
    Failures? productsFailures,
    @Default(ScreenStatus.init) ScreenStatus cartItemsStatus,
    List<CartItem>? cartItems,
    Failures? cartItemsFailures,
    @Default(ScreenStatus.init) ScreenStatus addToCartStatus,
    Failures? addToCartFailures,
    @Default(ScreenStatus.init) ScreenStatus anotherStatus,
  }) = _HomeState;
}
