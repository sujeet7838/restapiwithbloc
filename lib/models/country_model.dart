class CountryModel {
  final String name;
  final String flag;
  final String official;
  final String capital;
  final String region;
  final String currencies;

  CountryModel({
    required this.name,
    required this.flag,
    required this.official,
    required this.capital,
    required this.region,
    required this.currencies,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name']['common'],
      flag: json['flags']['png'],
      official: json['name']['official'],
      capital: json['capital'] != null ? json['capital'][0] : 'No Capital',
      region: json['region'],
      currencies: json['currencies']['BOB'] != null
          ? json['currencies']['BOB'].toString()
          : 'No Currencies',
    );
  }
}
