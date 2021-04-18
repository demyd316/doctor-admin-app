import 'package:doctorgo_doctor/views/custom_widgets/custom_text_form_field.dart';
import 'package:doctorgo_doctor/views/home/followup/followup_procedures_select.dart';
import 'package:doctorgo_doctor/views/home/new_appointments/date_time_select.dart';
import 'package:doctorgo_doctor/views/home/new_appointments/select_doctor_name.dart';
import 'package:doctorgo_doctor/views/tabs/tabsPage.dart';
import 'package:flutter/material.dart';

class FollowupPage extends StatefulWidget {
  @override
  _FollowupPageState createState() => _FollowupPageState();
}

class _FollowupPageState extends State<FollowupPage> {

  String duration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 35,),

            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.close),
            ),

            Card(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      child: Image.asset("assets/icon/Rectangle.png", height: 70, width: 70, fit: BoxFit.cover,),
                      borderRadius: BorderRadius.circular(35),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("JOHNSON SMITH", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(height: 10),
                          Text("#1546897562", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 15
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          customTextFormField(
                            context,
                            onChanged: (value){

                            },
                            label: "Doctor name"
                          ),
                          Positioned(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => SelectDoctorName())
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.9,
                                height: 50.0,
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: Stack(
                          children: <Widget>[
                            customTextFormField(
                              context,
                              onChanged: (value){

                              },
                              label: "Date and Time"
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => DateTimeSelect()),
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.9,
                                height: 50.0,
                                color: Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          'Duration',
                          style: TextStyle(
                            letterSpacing: 0.644,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.3,
                        margin: EdgeInsets.only(top: 10, bottom: 15),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: duration,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            onChanged: (String value){
                              setState(() {
                                duration = value;
                              });
                            },
                            items: <String>["5min", "10min", "13min", "20min", "30min", "45min", "1hour", "1:15min", "1:30min", "2hour", "2:15min", "2:30min", "3hour", "3:15min", "3:30min", "4hour", "4:15min", "4:30min", "5hour"]
                              .map<DropdownMenuItem<String>>((String value){
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),

                      Stack(
                        children: <Widget>[
                          customTextFormField(
                            context,
                            onChanged: (value){

                            },
                            label: "Procedures"
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => FollowupProceduresSelect()), 
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.9,
                              height: 50.0,
                              color: Colors.transparent,
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 15),
                        child: Text("Notes", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),)
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("dkdsjskdfsldfjskdfsldfjsklfjalfjlsdjfklsdjflkajflkajsdfkljsdlfkjslkdfjslkadfjlskdjflsajflsafdjlafjlkf", style: TextStyle(color: Colors.grey),)
                      )

                    ],
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => TabsPage()),
                    );
                  },
                  minWidth: MediaQuery.of(context).size.width*0.7,
                  color: Color.fromRGBO(71, 144, 255, 1),
                  height: 45,
                  child: Text(
                    "Save New Appointment",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.5),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
          ]
        ),
      ),
    );
  }
}