import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'color_constants.dart';

Widget loader(BuildContext context, String text){
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Center(
    child: Container(
      height: height,
      width: width,
      color: TRANSPARENT_WHITE,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SpinKitPumpingHeart(
              color: BLUE,
              size: 40.0,
            ),
            Text(text,style: const TextStyle(color: GREEN,fontSize: 14.0,fontFamily: 'opensansbold'),)
          ],
        ),
      ),
    ),
  );
}