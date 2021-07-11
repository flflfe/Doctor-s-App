
import 'package:doctor_app/Models/appointment.dart';
import 'package:doctor_app/Services/api_base_helper.dart';
import 'package:doctor_app/Utilities/api_constants.dart';
import 'package:doctor_app/Utilities/shared_preference.dart';

class AppointmentsService{
  ApiBaseHelper helper = ApiBaseHelper();

  Future<List<Appointment>> getAppointmentsForADay(String date) async {
    List<Appointment> appointmentList = [];
    var queryParam = {
      'auth-token' : MASTER_AUTH_TOKEN
    };
    var response = await helper.getRequest(APPOINTMENTS_FOR_DATE + date , [200] ,queryParam: queryParam);
    if(response['success']){
      var data = response['data'];
      for(int i=0 ; i<data.length ; i++){
        appointmentList.add(Appointment.fromJson(data[i]));
      }
      return appointmentList;
    }
    else{
      return [];
    }
  }
}