import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class DataJudApiService {

  final apiKey =
      'APIKey cDZHYzlZa0JadVREZDJCendQbXY6SkJlTzNjLV9TRENyQk1RdnFKZGRQdw==';

  /*
  Exemplo de dados reais
  TJES, processo nº 00013659120188080024
   */

  Future<http.Response> buscaDadosProcesso(
      String endPoint, String processNumber) async {
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
