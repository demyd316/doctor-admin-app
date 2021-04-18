import 'package:doctorgo_doctor/views/custom_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class BlockingAppointmentsPage extends StatefulWidget {
  @override
  _BlockingAppointmentsPageState createState() => _BlockingAppointmentsPageState();
}

class _BlockingAppointmentsPageState extends State<BlockingAppointmentsPage> {

  String timeType = "AllDay";
  DateTime startDate;
  DateTime endDate;
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController startHoursController = TextEditingController();
  TextEditingController endHoursController = TextEditingController();
  DateFormat month = DateFormat("MMM");
  DateFormat date = DateFormat("dd");
  DateFormat year = DateFormat("yyyy");
  DateFormat time = DateFormat("hh:mm:ss");
  bool isHours = false;
  bool acceptVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 110.0,
              padding: EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white,),
                  ),
                  Text("Blocking appointmens", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
                  PopupMenuButton(
                    onSelected: (selected){
                      switch (selected) {
                        case 0:
                          break;
                        default:
                      }
                    },
                    itemBuilder: (context) {
                      var list = List<PopupMenuEntry<Object>>();
                      list.add(
                        PopupMenuItem(
                          child: Text("Delete", style: TextStyle(fontWeight: FontWeight.w600)),
                          value: 0,
                        ),
                      );

                      list.add(
                        PopupMenuItem(
                          child: Text("Edit", style: TextStyle(fontWeight: FontWeight.w600)),
                          value: 1,
                        ),
                      );
                      return list;
                    },
                    icon: Icon(Icons.more_vert, color: Colors.white,),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21.0),
                  bottomLeft: Radius.circular(21.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment(-1.6, 2.17),
                  end: Alignment(0.53, -1.52),
                  colors: [ 
                    Color(0xff2d79e6), 
                    Color(0xff093d87)
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Text("Reason for blocking appointments", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      customTextFormField(
                        context,
                        onChanged: (value){
                          
                        },
                        label: "Reason for blocking appointments"
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: "AllDay",
                                  groupValue: timeType,
                                  onChanged: (value){
                                    setState(() {
                                      timeType = value;
                                      isHours = false;
                                    });
                                  },
                                ),

                                Text("All day", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),

                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: "Hours",
                                  groupValue: timeType,
                                  onChanged: (value){
                                    setState(() {
                                      timeType = value;
                                      isHours = true;
                                    });
                                  },
                                ),
                                Text("Hours", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 10, right: 10),
                                      child: customTextFormField(
                                        context,
                                        onChanged: (value){
                                                                                    
                                        },
                                        controller: startDateController,
                                        label: "From"
                                      ),
                                    ),

                                    GestureDetector(
                                      onTap: (){
                                        DatePicker.showDatePicker(context,
                                          showTitleActions: true,
                                          minTime: DateTime.now(),
                                          maxTime: DateTime(2999, 1, 1, 20, 50),
                                          onChanged: (date) {
                                          },
                                        onConfirm: (value) {
                                          setState(() {
                                            startDate =  value;
                                            startDateController.text = date.format(startDate) + " "
                                              + month.format(startDate) + " "
                                              + year.format(startDate);
                                          });
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width*0.6,
                                        height: 75,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ],
                                ),

                                Stack(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 10, right: 10),
                                      child: customTextFormField(
                                        context,
                                        onChanged: (value){
                                          
                                        },
                                        controller: endDateController,
                                        label: "To"
                                      ),
                                    ),

                                    GestureDetector(
                                      onTap: (){
                                        DatePicker.showDatePicker(context,
                                          showTitleActions: true,
                                          minTime: DateTime.now(),
                                          maxTime: DateTime(2999, 1, 1, 20, 50),
                                          onChanged: (date) {
                                          },
                                        onConfirm: (value) {
                                          setState(() {
                                            endDate =  value;
                                            endDateController.text = date.format(startDate) + " "
                                              + month.format(startDate) + " "
                                              + year.format(startDate);
                                          });
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width*0.6,
                                        height: 75,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Visibility(
                            visible: isHours,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.3,
                              child: Column(
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        child: customTextFormField(
                                          context,
                                          onChanged: (value){
                                            
                                          },
                                          controller: startHoursController,
                                          label: "Hours"
                                        ),
                                      ),

                                      GestureDetector(
                                        onTap: (){
                                          DatePicker.showTime12hPicker(context,
                                            showTitleActions: true,
                                            currentTime: DateTime.now(),
                                            onChanged: (date) {
                                            },
                                          onConfirm: (value) {
                                            setState(() {
                                              startDate =  value;
                                              startHoursController.text = time.format(startDate);
                                            });
                                          });
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.6,
                                          height: 75,
                                          color: Colors.transparent,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(left: 10, right: 10),
                                        child: customTextFormField(
                                          context,
                                          onChanged: (value){
                                            
                                          },
                                          controller: endHoursController,
                                          label: "Hours"
                                        ),
                                      ),

                                      GestureDetector(
                                        onTap: (){
                                          DatePicker.showTime12hPicker(context,
                                            showTitleActions: true,
                                            currentTime: DateTime.now(),
                                            onChanged: (date) {
                                            },
                                          onConfirm: (value) {
                                            setState(() {
                                              endDate =  value;
                                              endHoursController.text = time.format(endDate);
                                            });
                                          });
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.6,
                                          height: 75,
                                          color: Colors.transparent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                              value: acceptVal,
                              onChanged: (val){
                                setState(() {
                                  acceptVal = val;
                                });
                              },
                            ),
                            Expanded(
                             child: Container(
                                child: Text("I accpet that patients will not be able to make new appointments and I will not be available for telemedicine",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            MaterialButton(
              onPressed: (){
              },
              minWidth: MediaQuery.of(context).size.width*0.7,
              color: Color.fromRGBO(71, 144, 255, 1),
              height: 45,
              child: Text(
                "Save",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.5),
              ),
            ),
            SizedBox(
              height: 10
            ),
          ]
        ),
      ),
    );
  }
}