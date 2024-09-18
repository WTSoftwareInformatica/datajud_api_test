import 'package:datajud_api_test/Repository/mock_database.dart';

class TribunalRepository {

  final dataSource = MockDatabase();

  String getNomeTribunal(String sigla) {
    if (sigla.isEmpty) return '';
    int index = dataSource.tribunais.indexWhere((st) => st.sigla == sigla);
    return dataSource.tribunais[index].nome;
  }

  String getEndPointTribunal(String sigla) {
    if (sigla.isEmpty) return '';
    int index = dataSource.tribunais.indexWhere((st) => st.sigla == sigla);
    return dataSource.tribunais[index].endPoint;
  }

  List<String> getListaSiglaTribunais() {
    List<String> siglaList = [];
    try {
      final listaTribunais = dataSource.tribunais;
      for (var tribunal in listaTribunais) {
        siglaList.add(tribunal.sigla);
      }
      return siglaList;
    } catch (e) {
      return siglaList;
    }
  }
}
