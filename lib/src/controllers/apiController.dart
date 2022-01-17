import 'package:api_test/src/configs/appConfigs.dart';
import 'package:api_test/src/models/article.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ApiController extends GetxController {
  final _dio = Dio();

  final article = RxList<Article>();

  getNews() async {
    try {
      final res = await _dio.get(baseUrl);

      final List<Article> articleData = res.data['articles']
          .map((json) => Article.fromJson(json))
          .toList()
          .cast<Article>();

      if (res.statusCode == 200) {
        article.addAll(articleData);
      }
    } catch (e) {
      print(e);
    }
  }
}
