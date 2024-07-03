import 'package:flutter/material.dart';
import '../widget/ListView.dart';
import '../widget/newsListViewBuilder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Row(mainAxisSize: MainAxisSize.min, children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ]),
        ),
        //body:const categoriesListView(),
        body:  Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: CustomScrollView(physics: BouncingScrollPhysics(),
           slivers: [
            SliverToBoxAdapter(
              child: categoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            News_ListViewBuilder(
              category: 'general',
            ),
          ]),
        ));
  }
}


