class CartItem {
  final String userId;
  final String productId;
  final String name;
  final double price;
  final String imageUrl;
  final int quantity;

  CartItem({
    required this.userId,
    required this.productId,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.quantity,
  });

  // Add the copyWith method
  CartItem copyWith({
    String? userId,
    String? productId,
    String? name,
    double? price,
    String? imageUrl,
    int? quantity,
  }) {
    return CartItem(
      userId: userId ?? this.userId,
      productId: productId ?? this.productId,
      name: name ?? this.name,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      quantity: quantity ?? this.quantity,
    );
  }

  // Add methods to convert to/from JSON if needed
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'productId': productId,
      'name': name,
      'price': price,
      'imageUrl': imageUrl,
      'quantity': quantity,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map, String userId) {
    return CartItem(
      userId: userId,
      productId: map['productId'],
      name: map['name'],
      price: map['price'],
      imageUrl: map['imageUrl'],
      quantity: map['quantity'],
    );
  }
}
