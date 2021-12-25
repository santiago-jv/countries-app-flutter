library countries;

import 'package:countries_app/models/country.dart';
import 'package:countries_app/screens/countryScreen.dart';
import 'package:countries_app/services/get_contries.dart';
import 'package:flutter/material.dart';

class Countries extends StatefulWidget {
  const Countries({Key? key}) : super(key: key);

  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  Future<List> futureCountries = getCountries();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, AsyncSnapshot<List> countriesSnap) {
        if (!countriesSnap.hasData) {
          return const Center(
              child: CircularProgressIndicator(color: Colors.black45));
        } else {
          return ListView.builder(
              itemCount: countriesSnap.data!.length,
              itemBuilder: (context, index) {
                Country country = Country.fromJson(countriesSnap.data![index]);
                return ListTile(
                  title: Text(country.name),
                  trailing: Image.network(
                    country.flag,
                    width: 50,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> CountryScreen(country: country),
                    ));
                  },
                );
              });
        }
      },
      future: futureCountries,
    );
  }
}
