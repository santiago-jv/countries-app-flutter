// ignore_for_file: unnecessary_this

library country_information;

import 'package:countries_app/layout/CountryInformation.dart';
import 'package:countries_app/models/country.dart';
import 'package:flutter/material.dart';

class CountryScreen extends StatelessWidget {
  final Country country;
  const CountryScreen({Key? key, required this.country}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(this.country.name,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: CountryInformation(country: country)
    );
  }
}
