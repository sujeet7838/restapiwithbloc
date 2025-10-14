

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapiwithbloc/bloc/allCountrylist/allcountrylist_event.dart';
import 'package:restapiwithbloc/bloc/allCountrylist/allcountrylist_state.dart';
import 'package:restapiwithbloc/models/allcountrylist_model.dart';
import 'package:restapiwithbloc/repositeries/country_repo.dart';

class AllCountrylistBloc extends Bloc<AllCountryListEvent, AllCountryListState> {
  final CountryRepository repository;
   final List<ContryListModel> _allCountries = [];
  AllCountrylistBloc(this.repository) : super(AllCountryListInitial()) {
    on<FetchCountryAllList>((event, emit) async {
      emit(AllCountryListLoading());
      try {
        final allcountries = await repository.fetchCountryAllList();
        emit(AllCountryListLoaded(allcountries));
      } catch (e) {
        emit(AllCountryListError("Failed to fetch countries"));
      }
    });

     on<SearchCountries>((event, emit) {
      final query = event.query.toLowerCase();
      final filtered = _allCountries
          .where((c) => c.name.toLowerCase().contains(query))
          .toList();
      emit(AllCountryListLoaded(filtered));
    });
  } 

}

