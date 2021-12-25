import 'package:countries_app/layout/Label.dart';
import 'package:countries_app/models/country.dart';
import 'package:flutter/widgets.dart';

class CountryInformation extends StatelessWidget {
  final Country country;
  const CountryInformation({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
          
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                country.flag,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Label(label: "Native name", value: country.nativeName)),
                  Label(label: "Capital", value: country.capital),
                  
    
                ],),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                  Label(label: "Population", value: country.population),
                  
                  Label(label: "Region", value: country.region)
    
                ],),
              )
            ],
          ),
        ),
    );
  }
}
