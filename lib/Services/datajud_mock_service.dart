import '../Data/mock_data.dart';

class DatajudMockService {

// Lê da mock database - apenas para testes sem consulta à API
  Future buscaMockData() async {
    return MockData().respostaOk['movimentos'];
  }

}


