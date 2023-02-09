# openapi.api.WeatherForecastApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWeatherForecast**](WeatherForecastApi.md#getweatherforecast) | **GET** /WeatherForecast | 


# **getWeatherForecast**
> List<WeatherForecast> getWeatherForecast()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = WeatherForecastApi();

try {
    final result = api_instance.getWeatherForecast();
    print(result);
} catch (e) {
    print('Exception when calling WeatherForecastApi->getWeatherForecast: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<WeatherForecast>**](WeatherForecast.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

