part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchProducts() = FetchProducts;
  const factory HomeEvent.addProduct(ProductModel product) = AddProduct;
  const factory HomeEvent.addToCart(CartItem item) = AddToCart;
  const factory HomeEvent.updateQuantity(String productId, int quantity) =
      UpdateQuantity;
  const factory HomeEvent.fetchCartItems() = FetchCartItems;
}
