import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapiwithbloc/bloc/allCountrylist/allcountrylist_bloc.dart';
import 'package:restapiwithbloc/bloc/allCountrylist/allcountrylist_event.dart';
import 'package:restapiwithbloc/bloc/allCountrylist/allcountrylist_state.dart';
import 'package:restapiwithbloc/widgets/allcountrylist_tile.dart';
import 'package:restapiwithbloc/widgets/custom_appbar.dart';

class AllcountrylistScreen extends StatefulWidget {
  const AllcountrylistScreen({super.key});

  @override
  State<AllcountrylistScreen> createState() => _AllcountrylistScreenState();
}

class _AllcountrylistScreenState extends State<AllcountrylistScreen> {

  @override
  void initState() {
    super.initState();
     context.read<AllCountrylistBloc>().add(FetchCountryAllList());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: const CustomAppBar(title: "Country All List Explorer", showBack: true),
  
      body: BlocBuilder<AllCountrylistBloc, AllCountryListState>(
        builder: (context, state) {
          if (state is AllCountryListLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is AllCountryListLoaded) {
            return ListView.builder(
              itemCount: state.allcountries.length,
              itemBuilder: (context, index) =>
                  AllCountryListTile(country: state.allcountries[index]),
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