import 'package:openapi/api.dart';

class Repository {
  Future<List<WeatherForecast>> fetchList() async {
    var client = ApiClient(basePath: "http://localhost:5160");

    var api = WeatherForecastApi(client);
    List<WeatherForecast>? res = await api.getWeatherForecast();
    return res ?? [];
  }
}
