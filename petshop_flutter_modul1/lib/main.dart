import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petshop_flutter_modul1/app/modules/home/bindings/http_binding.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialBinding: HttpBinding(),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
