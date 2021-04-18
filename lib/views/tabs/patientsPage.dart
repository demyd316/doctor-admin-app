import 'package:doctorgo_doctor/views/home/billing/billing_page.dart';
import 'package:doctorgo_doctor/views/home/clinic_history.dart';
import 'package:doctorgo_doctor/views/patients/patient_medical_prescription.dart';
import 'package:doctorgo_doctor/views/home/new_appointments/add_new_appointment.dart';
import 'package:doctorgo_doctor/views/patients/add_patient_page.dart';
import 'package:flutter/material.dart';
import 'package:doctorgo_doctor/views/custom_widgets/header.dart';

class PatientsPage extends StatefulWidget {
  @override
  _PatientsPageState createState() => _PatientsPageState();
}

class _PatientsPageState extends State<PatientsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Header(
              context,
              title: "Patients",
              onTap: (){
                Navigator.pop(context);
              }
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => AddPatientPage()),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        color: Colors.white,
                        child: Center(
                          child: Text("+ Add patient", style: TextStyle(fontSize: 16, color: Color(0xff2d79e6),),),
                        )
                      ),
                    ),

                    Expanded(
                      child: ListView.builder(
                        itemCount: 6, 
                        itemBuilder: (BuildContext context, int index){
                          return GestureDetector(
                            onTap: (){
                              Navigator.pop(context, "selected");
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Image.asset("assets/images/profile3.png", width: 50,),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text('Samuel Sandrich'),
                                              Text("34 years old"),
                                              Text("ORH+"),
                                              index == 5 ? Row(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Image.asset("assets/icon/calendar2.png", width: 15),
                                                      SizedBox(width: 4),
                                                      Text("10/07/2019", style: TextStyle(color: Colors.grey),)
                                                    ],
                                                  ),
                                                  SizedBox(width: 25),
                                                  Row(
                                                    children: <Widget>[
                                                      Image.asset("assets/icon/clock2.png", width: 15),
                                                      SizedBox(width: 4),
                                                      Text("11:30 am", style: TextStyle(color: Colors.grey),)
                                                    ],
                                                  ),
                                                ],
                                              ) : Container()
                                            ],
                                          ),
                                        ],
                                      ),
                                      PopupMenuButton(
                                        onSelected: (selected){
                                          switch (selected) {
                                            case 0:
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (_) => ClinicHistory()),
                                              );
                                            break;

                                            case 1:
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (_) => PatientMedicalPrescription()),
                                              );
                                            break;

                                            case 2:
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (_) => BillingPage()),
                                              );
                                            break;

                                            case 3:
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (_) => AddNewAppointment()),
                                              );
                                            break;
                                            default:
                                          }
                                        },
                                        itemBuilder: (context) {
                                          var list = List<PopupMenuEntry<Object>>();
                                          list.add(
                                            PopupMenuItem(
                                              child: Text("Clinic history", style: TextStyle(fontWeight: FontWeight.w600)),
                                              value: 0,
                                            ),
                                          );

                                          list.add(
                                            PopupMenuItem(
                                              child: Text("Prescription", style: TextStyle(fontWeight: FontWeight.w600)),
                                              value: 1,
                                            ),
                                          );

                                          list.add(
                                            PopupMenuItem(
                                              child: Text("Billing", style: TextStyle(fontWeight: FontWeight.w600)),
                                              value: 2,
                                            ),
                                          );

                                          list.add(
                                            PopupMenuItem(
                                              child: Text("Appointment", style: TextStyle(fontWeight: FontWeight.w600)),
                                              value: 3,
                                            ),
                                          );
                                          return list;
                                        },
                                        icon: Icon(Icons.more_vert,),
                                      ),
                                    ],
                                  ),

                                  Divider(thickness: 0.5, color: Colors.grey,)
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}