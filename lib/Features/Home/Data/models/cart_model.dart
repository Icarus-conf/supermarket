class CartItem {
  final String userId; // Add userId field
  final String productId;
  final String name;
  final double price;
  final String imageUrl;
  final int quantity;

  CartItem({
    required this.userId, // Include userId in the constructor
    required this.productId,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.quantity,
  });

  // Convert a CartItem into a Map.
  Map<String, dynamic> toJson() {
    return {
      'userId': userId, // Include userId in the JSON representation
      'productId': productId,
      'name': name,
      'price': price,
      'imageUrl': imageUrl,
      'quantity': quantity,
    };
  }

  // Convert a Map into a CartItem.
  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      userId: json['userId'], // Extract userId from JSON
      productId: json['productId'],
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      quantity: json['quantity'],
    );
  }
}
