import 'package:doctorgo_doctor/views/custom/deletePrescriptionModal.dart';
import 'package:doctorgo_doctor/views/tabs/medical_prescription.dart';
import 'package:doctorgo_doctor/views/home/prescription/prescriptionPage.dart';
import 'package:doctorgo_doctor/views/home/prescription/prescriptionsPage.dart';
import 'package:doctorgo_doctor/views/tabs/tabsPage.dart';
import 'package:flutter/material.dart';

class SharePrescriptionPage extends StatefulWidget {
  @override
  _SharePrescriptionPageState createState() => _SharePrescriptionPageState();
}

class _SharePrescriptionPageState extends State<SharePrescriptionPage> {

  bool visible;
  @override
  void initState() {
    visible = false;
    super.initState();
  }

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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => TabsPage())
                      );
                    },
                    child: Icon(Icons.keyboard_arrow_left, color: Colors.white,),
                  ),
                  Text("Prescription", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
                  Text("Share", style: TextStyle(color: Colors.white),)
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/icon/Rectangle.png"),
                      ),
                      SizedBox(width: 15),
                      Text("Justin Ford", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                    ],
                  ),

                  PopupMenuButton(
                    onSelected: (selected){
                      switch (selected) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => PrescriptionsPage())
                          );
                          break;
                        case 1:
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => DeletePrescriptionModal(),
                          );
                          break;
                        default:
                      }
                    },
                    itemBuilder: (context) {
                      var list = List<PopupMenuEntry<Object>>();
                      list.add(
                        PopupMenuItem(
                          child: Text("Edit", style: TextStyle(fontWeight: FontWeight.w600)),
                          value: 0,
                        ),
                      );

                      list.add(
                        PopupMenuItem(
                          child: Text("Delete", style: TextStyle(fontWeight: FontWeight.w600)),
                          value: 1,
                        ),
                      );

                      list.add(
                        PopupMenuItem(
                          child: Text("To print", style: TextStyle(fontWeight: FontWeight.w600,),),
                          value: 2,
                        ),
                      );
                      return list;
                    },
                    icon: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("PRESCRIPTION DETAILS", style: TextStyle(color: Colors.grey),),
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
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 16),),
                                  Text("4 day(s)", style: TextStyle(color: Colors.grey),)
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("1-0-1", style: TextStyle(color: Colors.grey),),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        visible = !visible;
                                      });
                                    },
                                    child: Icon(Icons.info_outline, color: Colors.grey,)
                                  ),
                                ],
                              ),

                              Visibility(
                                visible: visible,
                                child: Container(
                                  color: Color(0xffe5e5e5),
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("After Food", style: TextStyle(color: Colors.grey),),
                                      Text("Do not use this if patient is allergic to amoxicillin or to any other penicillin antibiotic,", style: TextStyle(color: Colors.grey),),
                                      Text("Amxicillin can make birth control pills less effective", style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                ),
                              ),
                              Divider(thickness: 0.5, color: Colors.grey,)
                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("(ET) Endotrachial Tube for KOH staining", style: TextStyle(fontSize: 16),),
                            Divider(thickness: 0.5, color: Colors.grey,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Prescribed by SANTI", style: TextStyle(fontSize: 12, color: Colors.grey),),
                                Text("16 junio 2020", style: TextStyle(fontSize: 12, color: Colors.grey),)
                              ],
                            ),
                          ],
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (_) => PrescriptionsPage())
                  // );
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