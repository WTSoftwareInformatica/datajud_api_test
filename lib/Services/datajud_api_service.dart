import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import '../Models/processo/processo_model.dart';

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

  Future<Processo> buscaApiData(
      String endPoint, String numeroProcesso, int index) async {
    Processo processo;
    try {
      http.Response response =
          await postApi(endPoint, numeroProcesso..padLeft(20, '0'));
      final decodedResponse = utf8.decode(response.bodyBytes);
      if (json.decode(decodedResponse)['hits']['total']['value'] > 0) {
        processo = Processo.fromJson(
            json.decode(decodedResponse)['hits']['hits'][index]['_source']);
      } else {
        processo = Processo();
        print('Numero processo else: ${processo.numeroProcesso}');
      }
    } catch (e) {
      processo = Processo();
    }
    return processo;
  }
}

/*

  Exemplo de dados reais

  TRF1, processo nº 00130759020004013800
  TJES, processo nº 00013659120188080024
  TJES, processo nº 00227832220178080024

*/
