class CategoryModel {
  String name;
  String imageUrl;

  CategoryModel({required this.name, required this.imageUrl});
}

List<CategoryModel> categories = [
  CategoryModel(name: "grocery", imageUrl: "assets/images/groc-cat.png"),
];
