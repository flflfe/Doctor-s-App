import 'package:doctor_app/Utilities/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int? initialIndex = 0;
  DateTime? selectedDate;
  String? selectedDateString;

  @override
  void initState() {
    super.initState();
    selectedDateString = DateFormat('dd-MM-yyyy').format(DateTime.now());
  }

  void handleClick(String value) {
    switch (value) {
      case 'Edit Profile':
        break;
      case 'Edit Performa':
        break;
      case 'Edit Schedule':
        break;
      case 'Edit Packages':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE,
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/homeo_sure_logo.png",height: 80,width: 80,),
                        SizedBox(width: 20,),
                        Text("Welcome Dr. Anto Jain",style: TextStyle(color: DARK_BLUE, fontFamily: "opensansreg", fontSize: 20),)
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/male_icon.png",height: 40,width: 40,),
                        SizedBox(width: 20,),
                        Text("Dr. Anto Jain",style: TextStyle(color: DARK_BLUE, fontFamily: "opensansbold", fontSize: 16),),
                        SizedBox(width: 10,),
                        PopupMenuButton<String>(
                          onSelected:(String value){
                            handleClick(value);
                          },
                          itemBuilder: (BuildContext context) {
                            return {'Edit Profile', 'Edit Performa', 'Edit Schedule', 'Edit Packages'}.map((String choice) {
                              return PopupMenuItem<String>(
                                value: choice,
                                child: Text(choice),
                              );
                            }).toList();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                DefaultTabController(
                  initialIndex: initialIndex ?? 0,
                  length: 2,
                  child: Container(
                    child: Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 75,
                                width: 200,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        selectedDate = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate: DateTime.now().add(Duration(days: 30)));
                                        selectedDateString = DateFormat('dd-MM-yyyy').format(selectedDate!);
                                        setState(() {});
                                      },
                                      icon: Icon(Icons.calendar_today_sharp,color: DARK_BLUE,),
                                    ),
                                    SizedBox(width: 10.0,),
                                    Text(selectedDateString.toString(),style: TextStyle(fontFamily: "opensansrbold",color: DARK_BLUE),)
                                  ],
                                ),
                              ),
                              Container(
                                height: 60.0,
                                child: TabBar(
                                  isScrollable: true,
                                  indicatorColor: BLUE,
                                  indicatorWeight: 2,
                                  indicatorSize: TabBarIndicatorSize.label,
                                  labelColor: BLUE,
                                  labelPadding: EdgeInsets.symmetric(horizontal: 50.0),
                                  tabs: [
                                    Tab(
                                        child: Container(
                                          width: 200,
                                          padding: EdgeInsets.all(10),
                                          child: Wrap(
                                            alignment: WrapAlignment.center,
                                            children: [
                                              Text(
                                                "Upcoming Appointments",
                                                overflow: TextOverflow.visible,
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontFamily: 'opensansbold'),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        )),
                                    Tab(
                                      child: Container(
                                        width: 200,
                                        alignment: Alignment.center,
                                        //width: 95.0,
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "Done Appointments",
                                          overflow: TextOverflow.visible,
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'opensansbold',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Container(
                                  child: Center(
                                    child: Image.asset("assets/images/no_appointment.png"),
                                  ),
                                ),
                                Container(
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
