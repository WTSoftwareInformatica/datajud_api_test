import '../Models/endpoints.dart';

class EndPointsService {
  String getUrlEndPoint(String endPoint) {
    return EndPoints().endPointUrl[endPoint];
  }
}