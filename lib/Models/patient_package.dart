class PatientPackage{
  String? name;
  int? consultationsLeft;
  String? createdAt;
  String? validTill;


  PatientPackage({this.name, this.consultationsLeft, this.createdAt, this.validTill});

  factory PatientPackage.fromJson(Map<String,dynamic> json){
    return PatientPackage(
        name: json['name'],
        consultationsLeft: json['consultationsLeft'],
        createdAt: json['createdAt'],
        validTill: json['validTill'],
    );
  }
}