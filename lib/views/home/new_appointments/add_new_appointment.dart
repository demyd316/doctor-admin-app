import 'package:doctorgo_doctor/views/custom_widgets/custom_text_form_field.dart';
import 'package:doctorgo_doctor/views/home/new_appointments/date_time_select.dart';
import 'package:doctorgo_doctor/views/home/new_appointments/procedures_select.dart';
import 'package:doctorgo_doctor/views/home/new_appointments/select_doctor_name.dart';
import 'package:doctorgo_doctor/views/patients/add_patient_page.dart';
import 'package:doctorgo_doctor/views/tabs/patientsPage.dart';
import 'package:doctorgo_doctor/views/tabs/tabsPage.dart';
import 'package:flutter/material.dart';

class AddNewAppointment extends StatefulWidget {
  @override
  _AddNewAppointmentState createState() => _AddNewAppointmentState();
}

class _AddNewAppointmentState extends State<AddNewAppointment> {

  String duration;

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
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white,),
                  ),
                  Text("Add New Appointment", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
                  Icon(Icons.keyboard_arrow_left, color: Colors.transparent,),
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => AddPatientPage()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: Center(
                            child: Text("+ Add patient", style: TextStyle(fontSize: 16, color: Color(0xff2d79e6),)),
                          ),
                        ),
                      ),

                      Stack(
                        children: <Widget>[
                          customTextFormField(
                            context,
                            onChanged: (value){
                              
                            },
                            label: "Search for patient"
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => PatientsPage())
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

                      customTextFormField(
                        context,
                        onChanged: (value){

                        },
                        label: "Telephone contact",
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: Stack(
                          children: <Widget>[
                            customTextFormField(
                              context,
                              onChanged: (value){

                              },
                              label: "Date and Time",
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
                        margin: EdgeInsets.only(top: 10, bottom: 15),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width*0.4,
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
                                MaterialPageRoute(builder: (_) => ProceduresSelect()), 
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
                        padding: EdgeInsets.only(left: 15, bottom: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                          decoration: InputDecoration(
                            border: InputBorder.none, 
                            enabledBorder: InputBorder.none,
                          ),
                        )
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 25, right:4,bottom: 15),
                        child:  MaterialButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => TabsPage())
                            );
                          },
                          minWidth: MediaQuery.of(context).size.width*4/5,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}

