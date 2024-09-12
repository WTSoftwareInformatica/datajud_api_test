import 'package:datajud_api_test/Models/processo/processo_state.dart';
import 'package:datajud_api_test/Services/datajud_api_service.dart';
import 'package:flutter/material.dart';

class ProcessoStore extends ValueNotifier<ProcessoState> {
  ProcessoStore() : super(InitialProcessoState());
  late String endPoint;
  late String numeroProcesso;
  final DataJudApiService dataJudApiService = DataJudApiService();

  void setEndPoint(String newValue) {
    endPoint = newValue;
  }

  void setNumeroProcesso(String newValue) {
    numeroProcesso = newValue;
  }

  Future fetchProcesso() async {
    value = LoadingProcessoState();
    notifyListeners();
    await Future.delayed((const Duration(seconds: 1)));
    try {
      final processo =
          await dataJudApiService.buscaDadosProcesso(endPoint, numeroProcesso);
      value = SuccessProcessoState(processo);
      notifyListeners();
    } catch (e) {
      value = ErrorProcessoState(e.toString());
      notifyListeners();
    }
  }
}
