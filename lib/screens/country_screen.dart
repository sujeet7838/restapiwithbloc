import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapiwithbloc/bloc/country/country_bloc.dart';
import 'package:restapiwithbloc/bloc/country/country_event.dart';
import 'package:restapiwithbloc/bloc/country/country_state.dart';
import 'package:restapiwithbloc/widgets/country_tile.dart';
import 'package:restapiwithbloc/widgets/custom_appbar.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  void initState() {
    super.initState();
         context.read<CountryBloc>().add(FetchCountries());
  }

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
             appBar: const CustomAppBar(title: "Country  List Explorer", showBack: true),
  
      body: BlocBuilder<CountryBloc, CountryState>(
        builder: (context, state) {
          if (state is CountryLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CountryLoaded) {
            return ListView.builder(
              itemCount: state.countries.length,
              itemBuilder: (context, index) =>
                  CountryTile(country: state.countries[index]),
            );
          } else if (state is CountryError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: Text('Something went wrong'));
        },
      ),
    );
  }
}
