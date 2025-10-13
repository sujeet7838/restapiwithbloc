import 'package:flutter/material.dart';
import 'package:restapiwithbloc/repositeries/country_repo.dart';
import 'package:restapiwithbloc/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CountryRepository repo = CountryRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Explorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
      // home: CountryListPage(),
    );
  }
}
