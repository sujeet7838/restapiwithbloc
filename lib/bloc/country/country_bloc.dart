import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapiwithbloc/bloc/country/country_event.dart';
import 'package:restapiwithbloc/bloc/country/country_state.dart';
import 'package:restapiwithbloc/repositeries/country_repo.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final CountryRepository repository;
  CountryBloc(this.repository) : super(CountryInitial()) {
    on<FetchCountries>((event, emit) async {
      emit(CountryLoading());
      try {
        final countries = await repository.fetchCountries();
        emit(CountryLoaded(countries));
      } catch (e) {
        emit(CountryError("Failed to fetch countries"));
      }
    });
  }
}
