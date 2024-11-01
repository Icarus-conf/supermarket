class CategoryModel {
  String name;
  String imageUrl;

  CategoryModel({required this.name, required this.imageUrl});
}

List<CategoryModel> categories = [
  CategoryModel(name: "Grocery", imageUrl: "assets/images/groc-cat.png"),
  CategoryModel(name: "Food", imageUrl: "assets/images/food-cat.png"),
];
