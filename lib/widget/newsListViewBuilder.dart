import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import '../services/news_services.dart';
import 'NewsListView.dart';

class News_ListViewBuilder extends StatefulWidget {
    News_ListViewBuilder({super.key , required this.category});
  final String category;
  @override
  State<News_ListViewBuilder> createState() => _News_ListViewBuilderState();
}

class _News_ListViewBuilderState extends State<News_ListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = newsServices(Dio()).getnews(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (BuildContext, AsyncSnapshot) {
          if (AsyncSnapshot.hasData) {
            return NewsListView(
              articles: AsyncSnapshot.data!,
            );
          } else if (AsyncSnapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('Error'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
