import 'package:get/get.dart';
import 'package:petshop_flutter_modul1/app/modules/home/bindings/http_binding.dart';
import 'package:petshop_flutter_modul1/app/modules/home/views/todo_pages.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => TodosPage(),
      binding: HttpBinding(),
    ),
  ];
}
