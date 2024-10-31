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

      final cartItems = cartItemsSnapshot.docs.map((doc) {
        final data = doc.data();
        return CartItem(
          userId: userId,
          productId: data['productId'],
          name: data['name'],
          price: data['price'],
          imageUrl: data['imageUrl'],
          quantity: data['quantity'],
        );
      }).toList();

      return Right(cartItems);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
