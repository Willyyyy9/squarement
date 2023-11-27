class SampleUserCompany {
  final String name;
  final String catchPhrase;
  final String bs;

  SampleUserCompany({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory SampleUserCompany.fromJson(Map<String, dynamic> json) {
    return SampleUserCompany(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'catchPhrase': catchPhrase,
      'bs': bs,
    };
  }
}
