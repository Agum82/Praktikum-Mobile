import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';
import '../models/photo_model.dart';

class ApiService {
  // Method untuk mengambil Postingan
  static Future<List<PostModel>> getPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((e) => PostModel.fromJson(e)).toList();
    } else {
      throw Exception('Gagal mengambil data postingan');
    }
  }

  // Method untuk mengambil Foto
  static Future<List<PhotoModel>> getPhotos() async {
    final response = await http.get(Uri.parse('https://picsum.photos/v2/list?page=2&limit=100'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((e) => PhotoModel.fromJson(e)).toList();
    } else {
      throw Exception('Gagal mengambil data foto');
    }
  }
}
