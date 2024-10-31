class ProductModel {
  String id; // Change to non-final
  String name;
  double price;
  String category;
  String description;
  String imageUrl;
  int quantity; // Change to non-final

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.description,
    required this.imageUrl,
    this.quantity = 1, // Initialize quantity with a default value
  });

  // Convert ProductModel to Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'category': category,
      'description': description,
      'imageUrl': imageUrl,
      'quantity': quantity, // Include quantity in the map
    };
  }

  // Create a ProductModel from Firestore data
  factory ProductModel.fromMap(Map<String, dynamic> map, String documentId) {
    return ProductModel(
      id: documentId,
      name: map['name'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      category: map['category'] ?? '',
      description: map['description'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      quantity: map['quantity']?.toInt() ?? 1, // Read quantity from the map
    );
  }

  ProductModel copyWith({int? quantity}) {
    return ProductModel(
      description: description,
      category: category,
      id: id,
      name: name,
      price: price,
      imageUrl: imageUrl,
      quantity: quantity ?? this.quantity,
    );
  }
}
