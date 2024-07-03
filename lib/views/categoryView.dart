import 'package:flutter/material.dart';
import 'package:news/widget/NewsListView.dart';
import 'package:news/widget/newsListViewBuilder.dart';

class cateoryView extends StatelessWidget {
  const cateoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          News_ListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
