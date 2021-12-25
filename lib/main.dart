import 'package:countries_app/layout/Countries.dart';
import 'package:countries_app/models/country.dart';
import 'package:countries_app/services/get_contries.dart';
import 'package:flutter/material.dart';

void main() async {
  /*  final countries = await getCountries();
  for (var i = 0; i < countries.length; i++) {
    final country = Country.fromJson(countries[i]);
    print(country.name);
  } */
  runApp(const CountriesApp());
}

class CountriesApp extends StatelessWidget {
  const CountriesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Where in the world?",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: const Center(child: Countries(),
        ),
      ),
    );
  }
}
