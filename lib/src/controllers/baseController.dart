import 'package:api_test/src/controllers/articleNewsController.dart';
import 'package:api_test/src/controllers/catagoryController.dart';
import 'package:get/get.dart';

class BaseController {
  final catagoryC = Get.put(CatagoryController());
  final articleNewsC = Get.put(ArticleNewsController());
}
