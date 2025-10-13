import 'package:restapiwithbloc/models/allcountrylist_model.dart';

abstract class AllCountryListState {}

class AllCountryListInitial extends AllCountryListState {}
class AllCountryListLoading extends AllCountryListState {}
class AllCountryListLoaded extends AllCountryListState {
final List<ContryListModel> allcountries;
  AllCountryListLoaded(this.allcountries);
}

class AllCountryListError extends AllCountryListState {
  final String message;
  AllCountryListError(this.message);
}
