import 'package:datajud_api_test/Pages/HomePage/dropdown_menu_tribunais.dart';
import 'package:flutter/material.dart';
import 'package:datajud_api_test/Widgets/custom_textfield.dart';
import 'package:intl/intl.dart';
import '../../Models/processo.dart';
import '../../Services/datajud_api_service.dart';
import '../../Services/endpoints_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  final _controllerDropDown = TextEditingController();
  final _controllerDtHoraUltAutual = TextEditingController();
  final _controllerTribunal = TextEditingController();
  final _controllerClasseNome = TextEditingController();
  final _controllerAssuntoNome = TextEditingController();
  final _controllerOrgaoJulgador = TextEditingController();
  final _controllerdataAjuizamento = TextEditingController();
  final _controllerInstancia = TextEditingController();

  bool _isLoading = false;
  bool _isVisibleDetails = false;
  late String _endPoint;
  late Processo _processo;
  final List<Movimento> _listaMovimentos = [];

  void _cleanControllers() {
    _isVisibleDetails = false;
    _controllerDtHoraUltAutual.text = '';
    _controllerTribunal.text = '';
    _controllerClasseNome.text = '';
    _controllerAssuntoNome.text = '';
    _controllerOrgaoJulgador.text = '';
    _controllerdataAjuizamento.text = '';
    _controllerInstancia.text = '';
    _listaMovimentos.clear();
  }

  void _fillControllers(Processo processo) {
    try {
      _controllerDtHoraUltAutual.text = DateFormat('dd-MM-yyyy – HH:mm ')
          .format(processo.dataHoraUltimaAtualizacao!);
      _controllerTribunal.text = processo.tribunal.toString();
      _controllerInstancia.text = processo.grau.toString();
      _controllerClasseNome.text = processo.classe!.nome.toString();
      _controllerAssuntoNome.text =
          processo.assuntos!.elementAt(0).nome.toString();
      _controllerOrgaoJulgador.text = processo.orgaoJulgador!.nome.toString();
      _controllerdataAjuizamento.text =
          DateFormat('dd-MM-yyyy – HH:mm ').format(processo.dataAjuizamento!);
      _listaMovimentos.clear();
      _listaMovimentos.addAll(processo.movimentos!.toList());
      _isVisibleDetails = true;
    } catch (e) {
      setState(() {
        _cleanControllers();
      });
    }
  }

  void _dropDownMenuChange(String? value) {
    setState(() {
      _controllerDropDown.text = value ?? '';
      _cleanControllers();
      _controller.text = '';
      _isVisibleDetails = false;
      _isLoading = false;
    });
  }

  void _elevatedButtonPressed() async {
    if (_controller.text.isNotEmpty) {
      try {
        setState(() {
          _isLoading = true;
        });
        await Future.delayed(const Duration(seconds: 1));
        _endPoint = EndPointsService().getUrlEndPoint(_controllerDropDown.text);
        _processo = await DataJudApiService()
            .buscaDadosProcesso(_endPoint, _controller.text);
        setState(() {
          _cleanControllers();
          _isLoading = false;
          _fillControllers(_processo);
        });
      } catch (e) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    _controllerDropDown.text = '';
    _cleanControllers();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllerDropDown.dispose();
    _controllerDtHoraUltAutual.dispose();
    _controllerTribunal.dispose();
    _controllerClasseNome.dispose();
    _controllerAssuntoNome.dispose();
    _controllerOrgaoJulgador.dispose();
    _controllerdataAjuizamento.dispose();
    _controllerInstancia.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 730) {
                return ListView(children: [
                  searchBarDesktop(),
                  const SizedBox(height: 10),
                  (_isLoading)
                      ? SizedBox(
                          height: (MediaQuery.sizeOf(context).height / 5) * 3,
                          child:
                              const Center(child: CircularProgressIndicator()),
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(flex: 1, child: leftControls()),
                            const SizedBox(height: 10),
                            Expanded(flex: 1, child: rightControls()),
                          ],
                        ),
                ]);
              } else {
                return ListView(
                  children: [
                    searchBarSmart(),
                    (_isLoading)
                        ? SizedBox(
                            height: (MediaQuery.sizeOf(context).height / 5) * 3,
                            child: const Center(
                                child: CircularProgressIndicator()),
                          )
                        : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            leftControls(),
                            const SizedBox(height: 10),
                            rightControls(),
                          ],
                        )
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget searchBarDesktop() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 2,
          child: DropdownMenuTribunais(
              controller: _controllerDropDown, onSelected: _dropDownMenuChange),
        ),
        const SizedBox(width: 10),
        Flexible(
            flex: 2,
            child: TextField(
              controller: _controller,
            )),
        const SizedBox(width: 10),
        Flexible(flex: 1, child: searchButton()),
        const SizedBox(width: 10),
        Flexible(
          flex: 1,
          child: fillButton(),
        ),
      ],
    );
  }

  Widget searchBarSmart() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
                child: DropdownMenuTribunais(
                    controller: _controllerDropDown,
                    onSelected: _dropDownMenuChange)),
            const SizedBox(width: 10),
            SizedBox(width: 70, child: fillButton()),
          ],
        ),
        const SizedBox(width: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
              ),
            ),
            const SizedBox(width: 10),
            searchButton(),
          ],
        ),
      ],
    );
  }

  Widget searchButton() {
    return ElevatedButton(
      onPressed: () async {
        _elevatedButtonPressed();
      },
      child: const Icon(Icons.search),
    );
  }

  Widget fillButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _endPoint = EndPointsService().getUrlEndPoint('TRF1');
          _controller.text = '00130759020004013800';
          _controllerDropDown.text = 'TRF1';
          _isVisibleDetails = false;
        });
      },
      child: const Text('Fill'),
    );
  }

  Widget leftControls() {
    return (!_isVisibleDetails)
        ? const SizedBox(width: 10)
        : Card(
            elevation: 3,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomTextfield('Tribunal', _controllerTribunal),
                  CustomTextfield('Instância', _controllerInstancia),
                  CustomTextfield('Assunto', _controllerAssuntoNome),
                  CustomTextfield('Classe', _controllerClasseNome),
                  CustomTextfield('Órgão Julgador', _controllerOrgaoJulgador),
                  CustomTextfield(
                      'Data do Ajuizamento', _controllerdataAjuizamento),
                  CustomTextfield(
                      'Última Autalização', _controllerDtHoraUltAutual),
                ],
              ),
            ),
          );
  }

  Widget rightControls() {
    return (!_isVisibleDetails)
        ? const SizedBox(width: 10)
        : Card(
            elevation: 3,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text('Movimentos'),
                  Column(
                    children: [
                      SizedBox(
                        height: 315,
                        child: ListView.builder(
                          itemCount: _listaMovimentos.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            int reverseIndex =
                                _listaMovimentos.length - 1 - index;
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Text(DateFormat('dd-MM-yyyy, HH:mm')
                                      .format(_listaMovimentos[reverseIndex]
                                          .dataHora!)),
                                ),
                                const Text(' - '),
                                Flexible(
                                    flex: 3,
                                    child: Text(
                                        _listaMovimentos[reverseIndex].nome ??
                                            '')),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
