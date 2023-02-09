//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WeatherForecast {
  /// Returns a new [WeatherForecast] instance.
  WeatherForecast({
    this.date,
    this.temperatureC,
    this.temperatureF,
    this.summary,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? temperatureC;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? temperatureF;

  String? summary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WeatherForecast &&
     other.date == date &&
     other.temperatureC == temperatureC &&
     other.temperatureF == temperatureF &&
     other.summary == summary;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date == null ? 0 : date!.hashCode) +
    (temperatureC == null ? 0 : temperatureC!.hashCode) +
    (temperatureF == null ? 0 : temperatureF!.hashCode) +
    (summary == null ? 0 : summary!.hashCode);

  @override
  String toString() => 'WeatherForecast[date=$date, temperatureC=$temperatureC, temperatureF=$temperatureF, summary=$summary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.date != null) {
      json[r'date'] = this.date!.toUtc().toIso8601String();
    } else {
      json[r'date'] = null;
    }
    if (this.temperatureC != null) {
      json[r'temperatureC'] = this.temperatureC;
    } else {
      json[r'temperatureC'] = null;
    }
    if (this.temperatureF != null) {
      json[r'temperatureF'] = this.temperatureF;
    } else {
      json[r'temperatureF'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    return json;
  }

  /// Returns a new [WeatherForecast] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeatherForecast? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WeatherForecast[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WeatherForecast[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeatherForecast(
        date: mapDateTime(json, r'date', ''),
        temperatureC: mapValueOfType<int>(json, r'temperatureC'),
        temperatureF: mapValueOfType<int>(json, r'temperatureF'),
        summary: mapValueOfType<String>(json, r'summary'),
      );
    }
    return null;
  }

  static List<WeatherForecast>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WeatherForecast>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeatherForecast.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeatherForecast> mapFromJson(dynamic json) {
    final map = <String, WeatherForecast>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeatherForecast.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeatherForecast-objects as value to a dart map
  static Map<String, List<WeatherForecast>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WeatherForecast>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeatherForecast.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

