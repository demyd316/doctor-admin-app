import 'package:doctorgo_doctor/views/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 15),
              width: MediaQuery.of(context).size.width*2/5,
              child: Image.asset("assets/images/DrGo_PNG.png")
            ), 
            Text("Hi", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300, color: Color.fromRGBO(38, 87, 121, 1)),),
            Text("Welcome!", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300, color: Color.fromRGBO(38, 87, 121, 1)),),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Please choose the type of registration", style: TextStyle(fontSize: 16, color: Color.fromRGBO(139, 114, 103, 1)),)
            ), 
            Padding(
              padding: EdgeInsets.only(left: 10, right: 5, bottom: 1),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 1.15,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right:5),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: 55,
                              height: 55,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                child: Image.asset("assets/icon/Laboratory.png"),
                              ),
                            ),
                            Text(
                              'Laboratory',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right:5),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: 55,
                              height: 55,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                child: Image.asset("assets/icon/computer.png"),
                              ),
                            ),
                            Text(
                              'Insurance',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right:5),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: 55,
                              height: 55,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                child: Image.asset("assets/icon/Laboratory.png"),
                              ),
                            ),
                            Text(
                              'Company',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right:5),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: 55,
                              height: 55,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                child: Image.asset("assets/icon/nurse.png"),
                              ),
                            ),
                            Text(
                              'Nurse',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LandingPage()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right:5),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: 55,
                              height: 55,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                child: Image.asset("assets/icon/doctor.png"),
                              ),
                            ),
                            Text(
                              'Doctors',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right:5),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: 55,
                              height: 55,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                child: Image.asset("assets/icon/Laboratory.png"),
                              ),
                            ),
                            Text(
                              'Pharmacy',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
