class Country {
  final String name;
  final String alpha3Code;
  final String capital;
  final String flag;

  Country(
      {required this.name,
      required this.alpha3Code,
      required this.capital,
      required this.flag});

  static Country fromJson(Map json) {
    return Country(
      name: json['name'],
      alpha3Code: json['alpha3Code'],
      capital: json['capital'],
      flag: json['flag'],
    );
  }
}
