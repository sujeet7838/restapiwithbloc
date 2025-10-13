class Urls {
  static const String baseUrl =
      'https://restcountries.com/v3.1/';

  static const String countryList = '${baseUrl}name/all';
  static const String allCountryList = '${baseUrl}all?fields=name';
}