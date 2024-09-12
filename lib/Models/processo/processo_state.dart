import 'package:datajud_api_test/Models/processo/processo.dart';

abstract class ProcessoState {}

class InitialProcessoState extends ProcessoState {}

class SuccessProcessoState extends ProcessoState {
  final Processo processo;

  SuccessProcessoState(this.processo);
}

class LoadingProcessoState extends ProcessoState {}

class ErrorProcessoState extends ProcessoState {
  final String message;

  ErrorProcessoState(this.message);
}
