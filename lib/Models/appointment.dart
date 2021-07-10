
import 'package:doctor_app/Models/profile.dart';

class Appointment {

  late List? reports;
  late String? consultationStatus;
  late String? paymentStatus;
  late String? id;
  late String? timeSlot;
  late String? date;
  late String? patientId;
  late String? docId;
  late String? fees;
  late String? coupon;
  late Profile? info;

  Appointment(
      {this.reports,
      this.consultationStatus,
      this.paymentStatus,
      this.id,
      this.timeSlot,
      this.date,
      this.patientId,
      this.docId,
      this.fees,
      this.coupon,
      this.info
      });

  factory Appointment.fromJson(Map<String,dynamic> json){
    return Appointment(
      reports: json['reports'],
      consultationStatus: json['consultationStatus'],
      paymentStatus: json['paymentStatus'],
      id: json['_id'],
      timeSlot: json['timeSlot'],
      date: json['date'],
      patientId: json['patientId'],
      docId: json['docId'],
      fees: json['fees'],
      coupon: json['coupon'],
      info: Profile.fromJson(json['info'])
    );
  }
}