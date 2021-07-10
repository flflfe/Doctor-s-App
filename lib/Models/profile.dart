import 'package:doctor_app/Models/patient_package.dart';

class Profile{
  String? id;
  String? name;
  String? gender;
  int? age;
  PatientPackage? package;
  List? performa;

  Profile(
      {this.id, this.name, this.gender, this.age,
        this.package,
        this.performa});

  factory Profile.fromJson(Map<String,dynamic> json){
    return Profile(
      id: json['_id'],
      name: json['name'],
      gender: json['gender'],
      age: json['age'],
      package: json['package'] == null ? null : PatientPackage.fromJson(json['package']),
      performa: json['performa'],
    );
  }
}