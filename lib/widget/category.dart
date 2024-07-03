import 'package:flutter/material.dart';
import 'package:news/views/categoryView.dart';
import '../models/categoryModels.dart';

class category extends StatelessWidget {
  const category({super.key, required this.categoryM});

  final CategoryModel categoryM;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return cateoryView(
                category: categoryM.modelsName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 100,
          width: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(categoryM.image)),
              borderRadius: BorderRadius.circular(15),
              color: Colors.amberAccent),
          child: Center(
              child: Text(
            categoryM.modelsName,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
