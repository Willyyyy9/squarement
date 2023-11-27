class SampleUserAddress {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final SampleUserAddressGeo geo;

  SampleUserAddress({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory SampleUserAddress.fromJson(Map<String, dynamic> json) {
    return SampleUserAddress(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: SampleUserAddressGeo.fromJson(json['geo']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'suite': suite,
      'city': city,
      'zipcode': zipcode,
      'geo': geo.toJson(),
    };
  }
}

class SampleUserAddressGeo {
  final String lat;
  final String lng;

  SampleUserAddressGeo({
    required this.lat,
    required this.lng,
  });

  factory SampleUserAddressGeo.fromJson(Map<String, dynamic> json) {
    return SampleUserAddressGeo(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }
}
