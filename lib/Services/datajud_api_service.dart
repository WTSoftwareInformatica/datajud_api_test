import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import '../Models/processo.dart';

class DataJudApiService {
  final apiKey =
      'APIKey cDZHYzlZa0JadVREZDJCendQbXY6SkJlTzNjLV9TRENyQk1RdnFKZGRQdw==';

  Future<http.Response> postApi(String endPoint, String processNumber) async {
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

  Future<Processo> buscaDadosProcesso(
      String endPoint, String numeroProcesso) async {
    Processo processo;
    try {
      http.Response response = await DataJudApiService()
          .postApi(endPoint, numeroProcesso..padLeft(20, '0'));
      processo = Processo.fromJson(
          json.decode(response.body)['hits']['hits'][0]['_source']);
    } catch (e) {
      processo = Processo();
    }
    return processo;
  }
}

/*

  Exemplo de dados reais
  TJES, processo nº 00013659120188080024

*/
