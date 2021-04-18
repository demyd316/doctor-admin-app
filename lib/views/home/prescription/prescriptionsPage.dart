import 'package:doctorgo_doctor/views/custom/deletePrescriptionItem.dart';
import 'package:doctorgo_doctor/views/tabs/medical_prescription.dart';
import 'package:doctorgo_doctor/views/home/prescription/prescriptionPage.dart';
import 'package:doctorgo_doctor/views/home/prescription/sharePrescriptionPage.dart';
import 'package:flutter/material.dart';

class PrescriptionsPage extends StatefulWidget {
  @override
  _PrescriptionsPageState createState() => _PrescriptionsPageState();
}

class _PrescriptionsPageState extends State<PrescriptionsPage> {
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
                    child: Icon(Icons.keyboard_arrow_left, color: Colors.white,),
                  ),
                  Text("Prescription", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
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
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icon/Rectangle.png"),
                  ),
                  SizedBox(width: 15),
                  Text("Justin Ford", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => PrescriptionPage()),
                          );
                        },
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 16),),
                                    SizedBox(
                                      height: 8
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("DURATION", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                            Text("4 day(s)"),
                                          ],
                                        ),
                                        SizedBox(width: 15),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("FREQUENCY", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                            Text("1-0-1 After Food"),
                                          ],
                                        ),

                                        SizedBox(width: 15,),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Quantity", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                            Text("30"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                Icon(Icons.keyboard_arrow_right),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Card(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("(ET) Endotrachial Tube for KOH staining", style: TextStyle(fontSize: 16),),
                                  Text("1 test", style: TextStyle(fontSize: 13),)
                                ],
                              ),
                              GestureDetector(
                                onTap: (){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) => DeletePrescriptionItem(),
                                  );
                                },
                                child: Image.asset("assets/icon/delete.png", width: 25)
                              ),
                            ],
                          ),
                        ),
                      ),

                      Card(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("(ET) Endotrachial Tube for KOH staining", style: TextStyle(fontSize: 16),),
                                  Text("1 test", style: TextStyle(fontSize: 13),)
                                ],
                              ),
                              Image.asset("assets/icon/delete.png", width: 25),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => MedicalPrescription())
                            );
                          },
                          minWidth: MediaQuery.of(context).size.width*0.3,
                          color: Color(0xff1e5fbc),
                          height: 40, 
                          child: Text(
                            "Add more",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SharePrescriptionPage())
                  );
                },
                minWidth: MediaQuery.of(context).size.width*4/5,
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
            ),
          ],
        ),
      ),
    );
  }
}