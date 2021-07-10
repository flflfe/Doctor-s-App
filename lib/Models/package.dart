class Package{
  String? id;
  String? name;
  String? patientType;
  int? validity;
  int? price;
  int? consultations;
  bool? isIndian;

  Package({this.id, this.name, this.patientType, this.validity, this.price,
      this.consultations,this.isIndian});

  factory Package.fromJson(Map<String,dynamic> json){
    return Package(
      id: json['_id'],
      name: json['name'],
      patientType: json['patientType'],
      validity: json['validity'],
      price: json['price'],
      consultations: json['consultations'],
      isIndian: json['isIndian']
    );
  }
}