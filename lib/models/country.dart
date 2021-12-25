library country_model;

class Country {
  final String name;
  final String flag;
  final String capital;
  final String nativeName;
  final int population;
  final String region;

  Country(
      {required this.name,
      required this.flag,
      required this.capital,
      required this.nativeName,
      required this.population,
      required this.region
      });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
        name: json['name'],
        flag: json['flags']['png'],
        capital: json['capital'] ?? '',
        nativeName: json['nativeName'] ?? '',
        population: json['population'] ?? 0,
        region: json['region']??''
        );
  }
}
