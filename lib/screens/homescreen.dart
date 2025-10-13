import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapiwithbloc/bloc/allCountrylist/allcountrylist_bloc.dart';
import 'package:restapiwithbloc/bloc/country/country_bloc.dart';
import 'package:restapiwithbloc/repositeries/country_repo.dart';
import 'package:restapiwithbloc/screens/allcountrylist_screen.dart';
import 'package:restapiwithbloc/screens/country_screen.dart';
import 'package:restapiwithbloc/widgets/custom_appbar.dart';
import 'package:restapiwithbloc/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final CountryRepository repo = CountryRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: const CustomAppBar(title: "Home", showBack: false),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              title: "All Country List",
              icon: Icons.flag,
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (_) => AllCountrylistBloc(repo),
                      child: const AllcountrylistScreen(),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            CustomButton(
              title: "Country List",
              icon: Icons.flag,
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (_) => CountryBloc(repo),
                      child: const CountryScreen(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
