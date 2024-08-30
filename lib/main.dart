//import 'package:datajud_api_test/welcome.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'Data/endpoints.dart';
import 'Services/datajud_api_service.dart';
import 'Widgets/customWidgets.dart';

const apiKey =
    'APIKey cDZHYzlZa0JadVREZDJCendQbXY6SkJlTzNjLV9TRENyQk1RdnFKZGRQdw==';
//const endPoint = 'https://api-publica.datajud.cnj.jus.br/api_publica_trf1/_search';
final endPoint = endPoints['TRF1'].toString();

void main() {
  runApp(const MyApp());
}

final headers = {
  "Authorization":
      "ApiKey cDZHYzlZa0JadVREZDJCendQbXY6SkJlTzNjLV9TRENyQk1RdnFKZGRQdw==",
  "Content-Type": "application/json"
};

final body = jsonEncode({
  "query": {
    "match": {"numeroProcesso": "00130759020004013800"}
  }
});

/*
String _montaBody(String numeroProcesso) {
  return jsonEncode({
    "query": {
      "match": {"numeroProcesso": numeroProcesso}
    }
  });
}
*/
/*
Future<Map> getData() async {
  // ATENÇÃO: para funcionar no navegador é preciso rodar em
  // flutter run -d chrome --web-browser-flag "--disable-web-security"
  http.Response response =
//  await http.post(Uri.parse(endPoint), headers: headers, body: json.encode(body));
      await http.post(Uri.parse(endPoint), headers: headers, body: body);
  return json.decode(response.body)['hits']['hits'];
  //return json.decode(response.body)['results']['currencies']['USD'];
}
*/

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DataJud Api Test',
      home: MyHomePage(title: 'DataJud API'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = TextEditingController();
  final _controllerDtHoraUltAutual = TextEditingController();
  final _controllerTribunal = TextEditingController();
  final _controllerClasseNome = TextEditingController();
  final _controllerAssuntoNome = TextEditingController();
  final _controllerOrgaoJulgador = TextEditingController();
  final _controllerdataAjuizamento = TextEditingController();
  DateFormat dateFormat = DateFormat("yyyy-MM-ddTHH:mm:ss");

  Future buscaDadosProntos() async {
    final response =
        await http.post(Uri.parse(endPoint), headers: headers, body: body);
    return json.decode(response.body)['hits']['hits'][0]['_source']
        ['movimentos'];
  }

  @override
  Widget build(BuildContext context) {
    _controller.text = '00130759020004013800';

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 500,
                  child: ListTile(
                    leading: SizedBox(
                      width: 300,
                      child: TextField(
                        controller: _controller,
                      ),
                    ),
                    trailing: myElevatedButton(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: myColumn(),
            ),
          ],
        ),
      ),
    );
  }

  Widget myFutureBuilder() {
    return FutureBuilder(
      future: buscaDadosProntos(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); // Show a loading indicator while fetching data
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          // Display the fetched data
          return Column(
            children: [
              SizedBox(
                width: 550,
                height: 500,
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    // Build custom widgets based on fetched data
                    return ListTile(
                      title: Text(DateFormat('dd-MM-yyyy – HH:mm').format(
                          dateFormat.parse(snapshot.data[index]['dataHora']))),
                      subtitle: Text(snapshot.data[index]['nome'] ?? ''),
                      trailing: (snapshot.data[index]
                                  ['complementosTabelados'] !=
                              null)
                          ? Text(snapshot.data[index]['complementosTabelados']
                              [0]['nome'])
                          : const Text('Sem complementos Tabelados'),
                      onTap: () {
                        // Handle item tap event
                      },
                    );
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }

  Widget myElevatedButton() {
    return ElevatedButton(
        onPressed: () async {
          //print(RespostaApi.resposta['hits']['hits'][0]['_source']);
          if (_controller.text.isNotEmpty) {
            /*
                            http.Response response = await http.post(
                                Uri.parse(endPoint),
                                headers: headers,
                                //                          body: _montaBody('00130759020004013800'));
                                body: _montaBody(_controller.text));
                            */
            http.Response response = await DataJudApiService()
                .buscaDadosProcesso(endPoint, apiKey, _controller.text);
            /*
                            var mapa = json.decode(response.body)['hits']
                                ['hits'][0]['_source'];
                            print(mapa);

                             */
            setState(() {
              print(endPoints["TRT3"].toString());
              _controllerDtHoraUltAutual.text =
                  DateFormat('dd-MM-yyyy – HH:mm ').format(dateFormat.parse(
                      json.decode(response.body)['hits']['hits'][0]['_source']
                          ['dataHoraUltimaAtualizacao']));
              _controllerTribunal.text = '${json.decode(response.body)['hits']
                  ['hits'][0]['_source']['tribunal']} - ${tribunais[json.decode(response.body)['hits']
              ['hits'][0]['_source']['tribunal']].toString()}';
              _controllerClasseNome.text = json.decode(response.body)['hits']
                  ['hits'][0]['_source']['classe']['nome'];
              _controllerAssuntoNome.text = json.decode(response.body)['hits']
                  ['hits'][0]['_source']['assuntos'][0]['nome'];
              _controllerOrgaoJulgador.text = json.decode(response.body)['hits']
                  ['hits'][0]['_source']['orgaoJulgador']['nome'];
              _controllerdataAjuizamento.text =
                  DateFormat('dd-MM-yyyy – HH:mm ').format(dateFormat.parse(
                      json.decode(response.body)['hits']['hits'][0]['_source']
                      ['dataAjuizamento']));

            });
          } else {}
        },
        child: const SizedBox(
          width: 80,
          child: Row(
            children: [
              Icon(Icons.search),
              Text('Busca'),
            ],
          ),
        ));
  }

  Widget myColumn() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      customTextField('Tribunal', _controllerTribunal),
                      customTextField('Assunto', _controllerAssuntoNome),
                      customTextField('Classe', _controllerClasseNome),
                      customTextField('Órgão Julgador', _controllerOrgaoJulgador),
                      customTextField('Último Ajuizamento', _controllerdataAjuizamento),
                      customTextField('Última Autalização', _controllerDtHoraUltAutual),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text('Movimentos'),
                      myFutureBuilder(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
