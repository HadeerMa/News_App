import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class newsServices {
  final Dio dio;
  newsServices(this.dio);

  Future<List<ArticleModel>> getnews({required String category}) async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=550e1e5ce7a8479a968a29760251786f&country=ar&category=$category');
    Map<String, dynamic> JsonData = response.data;

    List<dynamic> articles = JsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);

      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
