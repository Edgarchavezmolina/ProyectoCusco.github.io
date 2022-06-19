// ignore_for_file: unnecessary_new, avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_application_1/services/models/country.dart';

class CountryService {
  /// More examples see https://github.com/flutterchina/dio/tree/master/example

  final _dio = new Dio();

  Future getCountryByName(String name) async {
    try {
      final url = 'https://restcountries.com/v2/name/$name';
      final resp = await _dio.get(url);

      final List<dynamic> countryList = resp.data;

      return countryList.map((obj) => Country.fromJson(obj)).toList();
    } catch (e) {
      print(e);

      return [];
    }
  }
}
