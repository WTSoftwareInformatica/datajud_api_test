
import '../Models/tribunais.dart';

class TribunaisService {
  Tribunais tribunais = Tribunais();

  String getNomeTribunal(String nomeTribunal) {
    return tribunais.tribunais[nomeTribunal];
  }

  List<dynamic> getListaTribunais() {
    return tribunais.listaTribunais;
}

}