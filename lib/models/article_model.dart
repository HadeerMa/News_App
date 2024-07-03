class ArticleModel {
 final  String? image;
 final  String title;
  final String? subtitle;
  ArticleModel(
      {required this.image, required this.subtitle, required this.title});
 factory ArticleModel.fromJson(json) {
   return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        subtitle: json['description'],
      );
  }
}
