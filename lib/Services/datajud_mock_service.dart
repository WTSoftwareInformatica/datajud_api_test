import '../Data/mock_data.dart';

class DatajudMockService {
  MockData mockData = MockData();

// Lê da mock database - apenas para testes sem consulta à API
  Future buscaMockData() async {
    return mockData.respostaOk['movimentos'];
  }

}


