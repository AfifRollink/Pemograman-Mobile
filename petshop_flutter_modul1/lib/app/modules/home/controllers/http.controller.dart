import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class HttpController extends GetxController {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com/todos/5';

  RxString title = ''.obs; // Menggunakan RxString untuk mengamati title
  RxBool isLoading = false.obs; // Observable boolean for loading state

  @override
  onInit() async {
    super.onInit();
    await fetchTitle();
  }

  Future<void> fetchTitle() async {
    try {
      isLoading.value = true; // Set loading state to true
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        title.value = jsonData['title']; // Mengambil data "title"
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('An error occurred: $e');
    } finally {
      isLoading.value = false; // Set loading state to false when done
    }
  }
}
