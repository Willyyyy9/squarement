import 'package:squarement/app/modules/home/models/sample_user_address.dart';
import 'package:squarement/app/modules/home/models/sample_user_company.dart';

class SampleUser {
  final int id;
  final String name;
  final String username;
  final String email;
  final SampleUserAddress address;
  final String phone;
  final String website;
  final SampleUserCompany company;

  SampleUser({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory SampleUser.fromJson(Map<String, dynamic> json) {
    return SampleUser(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address: SampleUserAddress.fromJson(json['address']),
      phone: json['phone'] as String,
      website: json['website'] as String,
      company: SampleUserCompany.fromJson(json['company']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'address': address.toJson(),
      'phone': phone,
      'website': website,
      'company': company.toJson(),
    };
  }
}
