import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  static final String apiPrefix = "http://149.28.132.97:7000/api/";

  static Future<dynamic> getProductList() async {
    final response = await http.get(
      Uri.parse(apiPrefix + "products"),
    );
    return json.decode(response.body);
  }

  static Future<dynamic> getProductImage(String pid, String pif) async {
    final response = await http.get(
      Uri.parse(apiPrefix + "products/$pid/$pif"),
    );
    return json.decode(response.body);
  }
}
