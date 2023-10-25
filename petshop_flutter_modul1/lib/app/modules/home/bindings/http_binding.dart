import 'package:get/get.dart';
import 'package:petshop_flutter_modul1/app/modules/home/controllers/http.controller.dart';


class HttpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HttpController());
  }
}