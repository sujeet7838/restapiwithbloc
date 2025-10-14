

// abstract class AllCountryListEvent {}

// class FetchCountryAllList extends AllCountryListEvent {}

abstract class AllCountryListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class Equatable {
  List<Object?> get props => [];
}

class FetchCountryAllList extends AllCountryListEvent {}

class SearchCountries extends AllCountryListEvent {
  final String query;
  SearchCountries(this.query);

  @override
  List<Object?> get props => [query];
}