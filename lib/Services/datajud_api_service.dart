import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class DataJudApiService {
  Future<http.Response> buscaDadosProcesso(
      String endPoint, String apiKey, String processNumber) async {
    final headers = {
      "Authorization": apiKey,
      "Content-Type": "application/json"
    };

    final body = jsonEncode({
      "query": {
        "match": {"numeroProcesso": processNumber}
      }
    });
    http.Response response =
        await http.post(Uri.parse(endPoint), headers: headers, body: body);
    return response;
  }
}
