library countries_service;

import 'dart:convert';

import 'package:countries_app/models/country.dart';
import "package:http/http.dart" as http;

Future<List> getCountries() async {
  final url = Uri.parse("https://restcountries.com/v2/all");
  final response = await http.get(url);

  return jsonDecode(response.body);
}
