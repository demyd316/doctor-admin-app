import 'package:doctorgo_doctor/views/authentication/clinic_information.dart';
import 'package:doctorgo_doctor/views/authentication/clinics_screen.dart';
import 'package:flutter/material.dart';

class AddClinic extends StatefulWidget {
  @override
  _AddClinicState createState() => _AddClinicState();
}

enum SingingCharacter { male, female, other }

class _AddClinicState extends State<AddClinic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 100, bottom: 25),
                child: Text("Add Clinic to your profile", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),)
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("If you own a clinic, you must upload the documents that support the property", style: TextStyle(fontSize: 18),)
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ClinicInformation()),
                        );
                      },
                      child: Icon(Icons.arrow_forward_ios)
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 2,)
                ),
              ),

              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("You are part of a clinic", style: TextStyle(fontSize: 18),)
                    ),
                    GestureDetector(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ClinicsScreen())
                        );
                      },
                      child: Icon(Icons.arrow_forward_ios)
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 2,)
                ),
              ),

              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("None of the above \n I want to enter my schedule", style: TextStyle(fontSize: 18),)
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 2,)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}