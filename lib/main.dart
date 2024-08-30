import 'package:datajud_api_test/Data/dados.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'Data/endpoints.dart';
import 'Data/tritunais.dart';
import 'Services/datajud_api_service.dart';
import 'Widgets/customWidgets.dart';

String dropdownValue = listaTribunais[listaTribunais.indexOf('TRF1')];

/*
const apiKey =
    'APIKey cDZHYzlZa0JadVREZDJCendQbXY6SkJlTzNjLV9TRENyQk1RdnFKZGRQdw==';

 */
var endPoint = endPoints['TRF1'];

void main() {
  runApp(const MyApp());
}

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
      debugShowCheckedModeBanner: false,
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
    return resposta['movimentos'];
  }

  final listaMovimentos = [];

  @override
  Widget build(BuildContext context) {
    _controller.text = '00130759020004013800';

    return SafeArea(
      child: myOldScaffold(),
    );
  }

  Widget myOldScaffold() {
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
                DropdownMenu<String>(
                  initialSelection:
                      listaTribunais[listaTribunais.indexOf('TRF1')],
                  onSelected: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries: listaTribunais
                      .map<DropdownMenuEntry<String>>((dynamic value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: '$value - ${tribunais[value]}');
                  }).toList(),
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

  Widget myElevatedButton() {
    return ElevatedButton(
        onPressed: () async {
          endPoint = endPoints[dropdownValue];
          if (_controller.text.isNotEmpty) {
            http.Response response = await DataJudApiService()
                .buscaDadosProcesso(
                    endPoint, _controller.text..padLeft(20, '0'));
            setState(() {
              listaMovimentos.clear();
              if (json.decode(response.body)['hits']['hits'][0]['_source']
                      ['movimentos'] !=
                  null) {
                listaMovimentos.addAll(json.decode(response.body)['hits']
                    ['hits'][0]['_source']['movimentos']);
              }
              _controllerDtHoraUltAutual.text =
                  DateFormat('dd-MM-yyyy – HH:mm ').format(dateFormat.parse(
                      json.decode(response.body)['hits']['hits'][0]['_source']
                          ['dataHoraUltimaAtualizacao']));
              _controllerTribunal.text =
                  '${json.decode(response.body)['hits']['hits'][0]['_source']['tribunal']} - ${tribunais[json.decode(response.body)['hits']['hits'][0]['_source']['tribunal']].toString()}';
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
          }
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
                      customTextField(
                          'Órgão Julgador', _controllerOrgaoJulgador),
                      customTextField(
                          'Último Ajuizamento', _controllerdataAjuizamento),
                      customTextField(
                          'Última Autalização', _controllerDtHoraUltAutual),
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
                      //myFutureBuilder(),
                      myListaMovimentos(),
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

  Widget myListaMovimentos() {
    return Column(
      children: [
        SizedBox(
          width: 550,
          height: 480,
          child: ListView.builder(
            itemCount: listaMovimentos.length,
            shrinkWrap: true,
            //physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(DateFormat('dd-MM-yyyy – HH:mm').format(
                    dateFormat.parse(listaMovimentos[index]['dataHora']))),
                subtitle: Text(listaMovimentos[index]['nome'] ?? ''),
                trailing:
                    (listaMovimentos[index]['complementosTabelados'] != null)
                        ? Text(listaMovimentos[index]['complementosTabelados']
                            [0]['nome'])
                        : const Text('Sem complementos Tabelados'),
                //title: Text(listaMovimentos[index]),
              );
            },
          ),
        ),
      ],
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
                height: 480,
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
}
