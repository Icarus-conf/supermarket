import 'package:supermarket/Core/error/failures.dart';
import 'package:supermarket/Features/Home/Data/models/cart_model.dart';
import 'package:supermarket/Features/Home/Data/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failures, void>> addProduct(ProductModel product);
  Future<Either<Failures, List<ProductModel>>> fetchProducts();
  Future<Either<Failures, void>> addToCart(CartItem cartItem);
  Future<Either<Failures, List<CartItem>>> fetchCartItems(String userId);
}
