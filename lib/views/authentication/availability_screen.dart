import 'package:doctorgo_doctor/views/authentication/add_certificate.dart';
import 'package:flutter/material.dart';

class AvailabilityScreen extends StatefulWidget {
  @override
  _AvailabilityScreenState createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(244, 247, 253, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, top: 60),
                child: Text("Availability", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
              ),
              Row(
                children: <Widget>[
                  Radio(
                    value: "Male",
                    groupValue: "Male",
                    onChanged: (value){},
                    activeColor: Color.fromRGBO(251, 119, 43, 1),
                  ),

                  Expanded(
                    flex: 1,
                    child: Text("Monday to Friday", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),)
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 36,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1, 
                            child: Container(
                              height: 30,
                              child: Center(
                                child: Text("8:30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                              margin: EdgeInsets.only(left: 3, right: 1.5, top: 3, bottom: 3,),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 247, 253, 1),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30,
                              child: Center(
                                child: Text("17:00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                              margin: EdgeInsets.only(right: 3, left: 1.5, top: 3, bottom: 3,),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 247, 253, 1),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Radio(
                    value: "Male",
                    groupValue: "Male",
                    onChanged: (value){},
                    activeColor: Color.fromRGBO(251, 119, 43, 1),
                  ),

                  Expanded(
                    flex: 1,
                    child: Text("Break", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),)
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 36,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1, 
                            child: Container(
                              height: 30,
                              child: Center(
                                child: Text("8:30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                              margin: EdgeInsets.only(left: 3, right: 1.5, top: 3, bottom: 3,),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 247, 253, 1),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30,
                              child: Center(
                                child: Text("17:00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                              margin: EdgeInsets.only(right: 3, left: 1.5, top: 3, bottom: 3,),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 247, 253, 1),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),

              Row(
                children: <Widget>[
                  Radio(
                    value: "Male",
                    groupValue: "Male",
                    onChanged: (value){},
                    activeColor: Color.fromRGBO(251, 119, 43, 1),
                  ),

                  Expanded(
                    flex: 1,
                    child: Text("Personalized", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),)
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left: 50, bottom:12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text("Monday", style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromRGBO(159, 143, 137, 1)),)
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 36,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1, 
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("8:30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(left: 3, right: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("17:00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(right: 3, left: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 50, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text("Tuesday", style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromRGBO(159, 143, 137, 1)),)
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 36,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1, 
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("8:30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(left: 3, right: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("17:00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(right: 3, left: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 50, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text("Wednesday", style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromRGBO(159, 143, 137, 1)),)
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 36,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1, 
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("8:30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(left: 3, right: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("17:00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(right: 3, left: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 50, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text("Thursday", style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromRGBO(159, 143, 137, 1)),)
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 36,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1, 
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("8:30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(left: 3, right: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("17:00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(right: 3, left: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 50, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text("Friday", style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromRGBO(159, 143, 137, 1)),)
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 36,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1, 
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("8:30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(left: 3, right: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("17:00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(right: 3, left: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 50, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text("Saturday", style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromRGBO(159, 143, 137, 1)),)
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 36,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1, 
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("8:30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(left: 3, right: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("17:00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(right: 3, left: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 50, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text("Sunday", style: TextStyle(fontWeight: FontWeight.w800, color: Color.fromRGBO(159, 143, 137, 1)),)
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 36,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1, 
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("8:30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(left: 3, right: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("17:00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(right: 3, left: 1.5, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                children: <Widget>[
                  Radio(
                    value: "Male",
                    groupValue: "Male",
                    onChanged: (value){},
                    activeColor: Color.fromRGBO(251, 119, 43, 1),
                  ),

                  Expanded(
                    flex: 1,
                    child: Text("Break", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16))
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 36,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1, 
                            child: Container(
                              height: 30,
                              child: Center(
                                child: Text("8:30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                              margin: EdgeInsets.only(left: 3, right: 1.5, top: 3, bottom: 3,),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 247, 253, 1),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30,
                              child: Center(
                                child: Text("17:00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                              margin: EdgeInsets.only(right: 3, left: 1.5, top: 3, bottom: 3,),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 247, 253, 1),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Expanded(
                      flex: 1,
                      child: Text("Time for medical care", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16))
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 36,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1, 
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("15", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(left: 3, right: 3, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("20", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(right: 3,  top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("25", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(right: 3, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                child: Center(
                                  child: Text("30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                margin: EdgeInsets.only(right: 3, top: 3, bottom: 3,),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 247, 253, 1),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 78, 1), borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
                child: Center(
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width*4/5,
                    color: Color.fromRGBO(71, 144, 255, 1),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => AddCertificate())
                      );
                    },
                    height: 45, 
                    child: Text(
                      "Next",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}