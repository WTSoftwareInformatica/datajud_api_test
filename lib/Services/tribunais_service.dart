
import '../Models/tribunais.dart';

class TribunaisService {

  String getNomeTribunal(String nomeTribunal) {
    return Tribunais().tribunais[nomeTribunal];
  }

  List<dynamic> getListaTribunais() {
    return Tribunais().listaTribunais;
}

}