import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:restapiwithbloc/Api/urls.dart';
import 'package:restapiwithbloc/models/allcountrylist_model.dart';
import 'package:restapiwithbloc/models/country_model.dart';

class CountryRepository {
  Future<List<CountryModel>> fetchCountries() async {
    final response = await http.get(
      Uri.parse(Urls.countryList),
    );
    if (response.statusCode == 200) {
      final List jsonData = json.decode(response.body);
      return jsonData.map((e) => CountryModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load countries");
    }
  }

  Future<List<ContryListModel>> fetchCountryAllList() async {
    final response = await http.get(
      Uri.parse(Urls.allCountryList),
    );
    if (response.statusCode == 200) {
      final List jsonData = json.decode(response.body);
       return jsonData.map((e) => ContryListModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load country");
    }
  }
}
