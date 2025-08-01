import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_shop/models/product.dart';

class ApiService {
  static const String baseUrl = 'https://fakestoreapi.com';

  static Future<List<Product>> fetchAllProducts() async {
    final response = await http.get(Uri.parse('$baseUrl/products'));

    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      return jsonData.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  static Future<List<String>> fetchCategories() async {
    final response = await http.get(Uri.parse('$baseUrl/products/categories'));

    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      return List<String>.from(jsonData);
    } else {
      throw Exception('Failed to load categories');
    }
  }

  static Future<List<Product>> fetchProductsByCategory(String category) async {
    final response = await http.get(Uri.parse('$baseUrl/products/category/$category'));

    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      return jsonData.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load products by category');
    }
  }
}
