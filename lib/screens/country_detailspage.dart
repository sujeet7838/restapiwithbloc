import 'package:flutter/material.dart';
import 'package:restapiwithbloc/models/allcountrylist_model.dart';

class CountryDetailsPage extends StatelessWidget {
    final ContryListModel country;

  const CountryDetailsPage({super.key, required  this.country});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(country.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                country.official,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
           
            ],
          ),
        ),
      ),
    );
  }
}