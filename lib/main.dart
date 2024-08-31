import 'package:datajud_api_test/Data/mock_data.dart';
import 'package:datajud_api_test/Widgets/custom_textfield.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'Data/endpoints.dart';
import 'Data/tritunais.dart';
import 'Models/processo.dart';
import 'Services/datajud_api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
  bool _isVisibleDetals = false;
  late String _endPoint;
  late String _dropdownValue;
  final _listaMovimentos = [];

  // Lê da mock database - apenas para testes sem consulta à API
  Future buscaDadosProntos() async {
    return MockData().respostaOk['movimentos'];
  }

  void cleanControllers() {
    _isVisibleDetals = false;
    _controller.text = '00130759020004013800';
    _controllerDtHoraUltAutual.text = '';
    _controllerTribunal.text = '';
    _controllerClasseNome.text = '';
    _controllerAssuntoNome.text = '';
    _controllerOrgaoJulgador.text = '';
    _controllerdataAjuizamento.text = '';
    _listaMovimentos.clear();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: myOldScaffold(),
    );
  }

  @override
  void initState() {
    // Temporário para testes
    _endPoint = endPoints['TRF1'];
    _controller.text = '00130759020004013800';
    _dropdownValue = listaTribunais[listaTribunais.indexOf('TRF1')];
    //
    super.initState();
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
                  width: 450,
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
                  width: 450,
//                  initialSelection: listaTribunais.first,
                  // Temporário para testes
                  initialSelection:listaTribunais[listaTribunais.indexOf('TRF1')],
                  onSelected: (String? value) {
                    setState(() {
                      _dropdownValue = value!;
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
              height: 45,
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
          _endPoint = endPoints[_dropdownValue];
          http.Response response = await DataJudApiService().buscaDadosProcesso(
              _endPoint, _controller.text..padLeft(20, '0'));
          setState(() {
            cleanControllers();
            if (json.decode(response.body)['hits']['total']['value'] != 0) {
              Processo processo = Processo.fromJson(json.decode(response.body)['hits']['hits'][0]['_source']);
              print('NumeroProcesso: ${processo.numeroProcesso}');
              if (json.decode(response.body)['hits']['hits'][0]['_source']
                      ['movimentos'] !=
                  null) {
                _listaMovimentos.addAll(json.decode(response.body)['hits']
                    ['hits'][0]['_source']['movimentos']);
              }
              _controllerDtHoraUltAutual.text =
                  DateFormat('dd-MM-yyyy – HH:mm ').format(dateFormat.parse(
                      json.decode(response.body)['hits']['hits'][0]['_source']
                          ['dataHoraUltimaAtualizacao']));
              _controllerTribunal.text =
                  '${json.decode(response.body)['hits']['hits'][0]['_source']['tribunal']} - '
                  '${tribunais[json.decode(response.body)['hits']['hits'][0]['_source']['tribunal']].toString()}';
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
              _isVisibleDetals = true;
            }
          });
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
    return (!_isVisibleDetals)
        ? const SizedBox(
            width: 10,
          )
        : Column(
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
                            CustomTextfield('Tribunal', _controllerTribunal),
                            CustomTextfield('Assunto', _controllerAssuntoNome),
                            CustomTextfield('Classe', _controllerClasseNome),
                            CustomTextfield(
                                'Órgão Julgador', _controllerOrgaoJulgador),
                            CustomTextfield('Último Ajuizamento',
                                _controllerdataAjuizamento),
                            CustomTextfield('Última Autalização',
                                _controllerDtHoraUltAutual),
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
          width: 500,
          height: 270,
          child: ListView.builder(
            itemCount: _listaMovimentos.length,
            shrinkWrap: true,
            //physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(DateFormat('dd-MM-yyyy – HH:mm').format(
                    dateFormat.parse(_listaMovimentos[index]['dataHora']))),
                subtitle: Text(_listaMovimentos[index]['nome'] ?? ''),
                trailing:
                    (_listaMovimentos[index]['complementosTabelados'] != null)
                        ? Text(_listaMovimentos[index]['complementosTabelados']
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
