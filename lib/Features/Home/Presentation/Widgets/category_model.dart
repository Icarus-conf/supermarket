class CategoryModel {
  String name;
  String imageUrl;

  CategoryModel({required this.name, required this.imageUrl});
}

List<CategoryModel> categories = [
  CategoryModel(name: "Food", imageUrl: "assets/images/food-cat.png"),
  CategoryModel(name: "Dairy", imageUrl: "assets/images/dairy-cat.png"),
  CategoryModel(name: "Bakery", imageUrl: "assets/images/bakery-cat.png"),
  CategoryModel(
      name: "Fruits & Vegetables",
      imageUrl: "assets/images/fruits-veg-cat.png"),
  CategoryModel(
      name: "Meat & Seafood", imageUrl: "assets/images/meat-seafood-cat.png"),
  CategoryModel(name: "Frozen Foods", imageUrl: "assets/images/frozen-cat.png"),
  CategoryModel(name: "Snacks", imageUrl: "assets/images/snacks-cat.png"),
];
