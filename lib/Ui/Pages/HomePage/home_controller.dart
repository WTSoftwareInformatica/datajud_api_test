import 'package:datajud_api_test/Models/Tribunal/tribunal_store.dart';

import '../../../Models/processo/processo_model.dart';
import '../../../Models/processo/processo_store.dart';
import 'package:flutter/material.dart';

class HomeController {
  HomeController(this.processoStore);

  final ProcessoStore processoStore;


  final TextEditingController toSearchController = TextEditingController();
  final TextEditingController dropDownController = TextEditingController();
  final TribunalStore tribunalStore = TribunalStore();
  final List<Movimento> listaMovimentos = [];

  void dadosProcesso() {
    String endPoint = dropDownController.text;
    String numeroProcesso = toSearchController.text;
    String urlEndPoint = tribunalStore.getEndPointTribunal(endPoint);
    processoStore.setEndPoint(urlEndPoint);
    processoStore.setNumeroProcesso(numeroProcesso);
    processoStore.fetchProcesso(0);
  }

  void dadosProcessoTrf() {
    toSearchController.text = '00130759020004013800';
    dropDownController.text = 'TRF1';
    processoStore.setEndPoint(
        'https://api-publica.datajud.cnj.jus.br/api_publica_trf1/_search');
    processoStore.setNumeroProcesso('00130759020004013800');
    processoStore.fetchProcesso(0);
  }

  void dadosProcessoTjes() {
//    toSearchController.text = '00013659120188080024';
    toSearchController.text = '00227832220178080024';
    dropDownController.text = 'TJES';
    processoStore.setEndPoint(
        'https://api-publica.datajud.cnj.jus.br/api_publica_tjes/_search');
    processoStore.setNumeroProcesso('00227832220178080024');
    processoStore.fetchProcesso(1);
  }

  void dropDownMenuChange(String? value) {
    dropDownController.text = value ?? '';
    toSearchController.text = '';
  }

  List<String> listaSiglaTribunais() {
    return tribunalStore.getListaSiglaTribunais();
  }

  String nomeTribunal(String sigla) {
    return tribunalStore.getNomeTribunal(sigla);
  }
}
