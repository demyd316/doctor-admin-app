import 'dart:ffi';

import 'package:flutter/material.dart';

class ClinicsScreen extends StatefulWidget {
  @override
  _ClinicsScreenState createState() => _ClinicsScreenState();
}

enum SingingCharacter { male, female, other }

class _ClinicsScreenState extends State<ClinicsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        color: Color.fromRGBO(234, 239, 248, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(40, 49, 142, 1),
              height: 100,
              padding: EdgeInsets.only(top: 35, left: 15, bottom: 10, right: 15),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white,)
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    color: Colors.white.withOpacity(0.3),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Search for Clinics",
                        hintStyle: TextStyle(color: Colors.white, ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 67,
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Clinic", style: TextStyle(color: Colors.white, fontSize: 16),),
                        Text("San Bernardo", style: TextStyle(color: Colors.white, fontSize: 16),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(71, 144, 255, 1),
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),

                  Container(
                    height: 67,
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Clinic", style: TextStyle(color: Colors.white, fontSize: 16),),
                        Text("Nueva Aurora", style: TextStyle(color: Colors.white, fontSize: 16),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(71, 144, 255, 1),
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),

                  Container(
                    height: 67,
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Clinic", style: TextStyle(color: Colors.white, fontSize: 16),),
                        Text("Santa Romosiba", style: TextStyle(color: Colors.white, fontSize: 16),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(71, 144, 255, 1),
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:25, right: 25, top: 40, bottom: 55),
              child: Text("The system will send a notification to the owner of the clinic to accept or not the affiliation",
                style: TextStyle(fontSize: 19),
              ),
            ),

            MaterialButton(
              minWidth: MediaQuery.of(context).size.width*9/10,
              color: Color.fromRGBO(71, 144, 255, 1),
              onPressed: (){

              },
              height: 50, 
              child: Text(
                "Save and enter my schedule",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  color: Colors.white
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ],
        ),
      )
    );
  }
}