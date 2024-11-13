import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supermarket/Core/error/failures.dart';
import 'package:supermarket/Features/Home/Data/models/cart_model.dart';
import 'package:supermarket/Features/Home/Data/models/product_model.dart';
import 'package:supermarket/Features/Home/Domain/repository/home_repo.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final FirebaseFirestore firestore;

  HomeRepositoryImpl(this.firestore);

  @override
  Future<Either<Failures, void>> addProduct(ProductModel product) async {
    try {
      await firestore.collection('products').add(product.toMap());
      return const Right(null);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<ProductModel>>> fetchProducts() async {
    try {
      final snapshot = await firestore.collection('products').get();
      final products = snapshot.docs
          .map((doc) => ProductModel.fromMap(doc.data(), doc.id))
          .toList();
      return Right(products);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, void>> addToCart(CartItem cartItem) async {
    try {
      await firestore
          .collection('carts')
          .doc(cartItem.userId)
          .collection('items')
          .add({
        'productId': cartItem.productId,
        'name': cartItem.name,
        'price': cartItem.price,
        'imageUrl': cartItem.imageUrl,
        'quantity': cartItem.quantity,
      });
      return const Right(null);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<CartItem>>> fetchCartItems(String userId) async {
    try {
      final cartItemsSnapshot = await firestore
          .collection('carts')
          .doc(userId)
          .collection('items')
          .get();

      final Map<String, CartItem> groupedItems = {};

      for (var doc in cartItemsSnapshot.docs) {
        final data = doc.data();
        final productId = data['productId'];
        final quantity = data['quantity'] as int;

        if (groupedItems.containsKey(productId)) {
          // If the item already exists, update the quantity
          groupedItems[productId] = groupedItems[productId]!.copyWith(
            quantity: groupedItems[productId]!.quantity + quantity,
          );
        } else {
          // Otherwise, create a new CartItem
          groupedItems[productId] = CartItem(
            userId: userId,
            productId: productId,
            name: data['name'],
            price: data['price'],
            imageUrl: data['imageUrl'],
            quantity: quantity,
          );
        }
      }

      return Right(groupedItems.values.toList());
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, void>> deleteCartItem(
      String userId, String productId) async {
    try {
      // Locate the specific document by userId and productId
      final cartItemsRef =
          firestore.collection('carts').doc(userId).collection('items');

      // Query the document using productId to get the correct document to delete
      final querySnapshot =
          await cartItemsRef.where('productId', isEqualTo: productId).get();

      // Ensure that we only delete the first document that matches the productId
      if (querySnapshot.docs.isNotEmpty) {
        await querySnapshot.docs.first.reference.delete();
        return const Right(null);
      } else {
        return Left(RemoteFailures('Item not found in cart.'));
      }
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
