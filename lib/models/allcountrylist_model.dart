class ContryListModel {
  String name;
  String official;
  //String nativeName;
  ContryListModel({required this.name, required this.official});
  factory ContryListModel.fromJson(Map<String, dynamic> json) {
    return ContryListModel(
      name: json['name']['common'],
      official: json['name']['official'],
      //nativeName: json['name']['nativeName'].values.first['official'],

    );
  }
}