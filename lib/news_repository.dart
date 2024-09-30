import 'package:dio/dio.dart';
import 'package:news_app/DataModel.dart';

class NewsRepository {
  // api calling
  Future<List<dynamic>> getArticles() async {
    // endpoint
    // API
    // TODO (1) Convert from Json to NewsModel
    final response = await Dio().get(
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=74f6fcbc6877442c9a270583031ef5b7');
    final data = DataModel.fromJson(response.data);

    return data.articles;
  }
}
