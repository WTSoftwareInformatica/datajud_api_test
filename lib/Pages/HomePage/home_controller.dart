import 'package:datajud_api_test/Services/endpoints_service.dart';

import '../../Models/processo/processo.dart';
import '../../Models/processo/processo_store.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HomeController {
  HomeController(this.context);

  final BuildContext context;

  final TextEditingController toSearchController = TextEditingController();
  final TextEditingController dropDownController = TextEditingController();
  final EndPointsService endPointsService = EndPointsService();
  final List<Movimento> listaMovimentos = [];

  void dadosProcesso(String endPoint, String numeroProcesso) {
    final processoStore = context.read<ProcessoStore>();
    String urlEndPoint = endPointsService.getUrlEndPoint(endPoint);
    processoStore.setEndPoint(urlEndPoint);
    processoStore.setNumeroProcesso(numeroProcesso);
    processoStore.fetchProcesso();
  }

  void dadosProcessoTrf() {
    toSearchController.text = '00130759020004013800';
    dropDownController.text = 'TRF1';
    final processoStore = context.read<ProcessoStore>();
    processoStore.setEndPoint(
        'https://api-publica.datajud.cnj.jus.br/api_publica_trf1/_search');
    processoStore.setNumeroProcesso('00130759020004013800');
    processoStore.fetchProcesso();
  }

  void dadosProcessoTjes() {
    toSearchController.text = '00013659120188080024';
    dropDownController.text = 'TJES';
    final processoStore = context.read<ProcessoStore>();
    processoStore.setEndPoint(
        'https://api-publica.datajud.cnj.jus.br/api_publica_tjes/_search');
    processoStore.setNumeroProcesso('00013659120188080024');
    processoStore.fetchProcesso();
  }

  void dropDownMenuChange(String? value) {
    dropDownController.text = value ?? '';
    toSearchController.text = '';
  }
}
