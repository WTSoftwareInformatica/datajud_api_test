import '../Models/endpoints.dart';

class EndPointsService {
  EndPoints endPoints = EndPoints();
  String getUrlEndPoint(String endPoint) {
    return endPoints.endPointUrl[endPoint];
  }
}