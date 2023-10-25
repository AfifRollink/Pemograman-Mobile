import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop_flutter_modul1/app/modules/home/controllers/http.controller.dart';

class TodosPage extends StatelessWidget {
  final HttpController httpController = Get.find<HttpController>(); // Mengambil instance HttpController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Data Example'),
      ),
      body: Center(
        child: Obx(() {
          if (httpController.isLoading.value) {
            return CircularProgressIndicator();
          } else {
            return Text(httpController.title.value);
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          httpController.fetchTitle(); // Mengambil data baru saat tombol ditekan
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
