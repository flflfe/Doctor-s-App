import 'dart:ui';

import 'package:fluttertoast/fluttertoast.dart';

import 'color_constants.dart';

Future flutterToast(String message, Color color){
  return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: WHITE,
        fontSize: 16.0
    );
}