import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapiwithbloc/bloc/allCountrylist/allcountrylist_bloc.dart';
import 'package:restapiwithbloc/bloc/allCountrylist/allcountrylist_event.dart';
import 'package:restapiwithbloc/bloc/allCountrylist/allcountrylist_state.dart';
import 'package:restapiwithbloc/screens/country_detailspage.dart';
import 'package:restapiwithbloc/widgets/allcountrylist_tile.dart';
import 'package:restapiwithbloc/widgets/custom_appbar.dart';

class AllcountrylistScreen extends StatefulWidget {
  const AllcountrylistScreen({super.key});

  @override
  State<AllcountrylistScreen> createState() => _AllcountrylistScreenState();
}

class _AllcountrylistScreenState extends State<AllcountrylistScreen> {
final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
     context.read<AllCountrylistBloc>().add(FetchCountryAllList());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            //  appBar: const CustomAppBar(title: "Country All List Explorer", showBack: true),
            appBar: AppBar(
        title: const Text('Countries'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                context.read<AllCountrylistBloc>().add(SearchCountries(value));

                print(value);
              },
              decoration: InputDecoration(
                hintText: 'Search by country name...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
  
      body: BlocBuilder<AllCountrylistBloc, AllCountryListState>(
        builder: (context, state) {
          if (state is AllCountryListLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is AllCountryListLoaded) {
            return ListView.builder(
              itemCount: state.allcountries.length,
              itemBuilder: (context, index) =>
                  AllCountryListTile(country: state.allcountries[index],
                     onTap: () {
                      if (kDebugMode) {
                        print("AllC ountryListTile tapped");
                      }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CountryDetailsPage(country: state.allcountries[index]),
                    ),
                  );
                },
                  ),
            );
          } else if (state is AllCountryListError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: Text('Something went wrong'));
        },
      ),
    );
  }
}