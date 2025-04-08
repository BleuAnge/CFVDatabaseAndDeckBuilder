import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class CardRepository {
  Future<List> getCards() async {
    final String route = "https://vanguardcard.io/api/search.php?limit=100&series=V";

    final response = await http.get(Uri.parse(route));
    
    if (response.statusCode == 200) {
      return jsonDecode(
        response.body
      );
    } else {
      log(
        response.body
      );
      
      return [];
    }
  }
}