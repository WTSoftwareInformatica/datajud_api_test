import 'package:datajud_api_test/Repository/tribunal_repository.dart';

class TribunalStore {

  final tribunalRepository = TribunalRepository();

  String getNomeTribunal(String sigla) {
    return tribunalRepository.getNomeTribunal(sigla);
  }

  String getEndPointTribunal(String sigla) {
    return tribunalRepository.getEndPointTribunal(sigla);
  }

  List<String> getListaSiglaTribunais() {
    return tribunalRepository.getListaSiglaTribunais();
  }
}
