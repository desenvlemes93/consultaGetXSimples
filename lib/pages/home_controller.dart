import 'package:get/get.dart';

class HomeController extends GetxController {
  var listNomes = [].obs;

  void adicionarNomes() {
    listNomes.add('Ricardo');
  }
}
