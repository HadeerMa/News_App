import 'package:flutter/cupertino.dart';
import '../models/categoryModels.dart';
import 'category.dart';

class categoriesListView extends StatelessWidget {
  const categoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/images/business.avif', modelsName: 'Business'),
    CategoryModel(
      image: 'assets/images/entertaiment.avif', modelsName: 'Entertainment'),
    CategoryModel(
      image: 'assets/images/health.avif', modelsName: 'Health'),
    CategoryModel(
      image: 'assets/images/science.avif', modelsName: 'Science'),
    CategoryModel(
      image: 'assets/images/sports.avif', modelsName: 'Sports'),
    CategoryModel(
      image: 'assets/images/technology.jpeg', modelsName: 'Technology'),
    CategoryModel(
      image: 'assets/images/general.avif', modelsName: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return category(
              categoryM: categories[index],
            );
          }),
    );
  }
}
