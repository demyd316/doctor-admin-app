import 'package:doctorgo_doctor/views/custom_widgets/header.dart';
import 'package:flutter/material.dart';

class RequestDetailsPage extends StatefulWidget {
  @override
  _RequestDetailsPageState createState() => _RequestDetailsPageState();
}

class _RequestDetailsPageState extends State<RequestDetailsPage> {
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
            Header(
              context,
              title: "Request Details",
              onTap: (){
                Navigator.pop(context);
              }
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Dermitologist", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("Order:#129797293", style: TextStyle(fontSize: 18),),
                      Padding(
                        padding: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/profile3.png"),
                              ),
                            ),
                            SizedBox(width: 15),
                            Text("Justin Ford", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),

                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on, color: Color(0xff2d79e6),),
                          Text(" 3453 HILL HAVEN DRIVE TOCOMA WA 86969", style: TextStyle(color: Colors.grey),)
                        ],
                      ),

                      SizedBox(height: 5),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.access_time, color: Color(0xff2d79e6),),
                                Text(" Time 11:30 AM", style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                          ),

                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.calendar_today, color: Color(0xff2d79e6),), 
                                Text(" Date 10/07/2020", style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 5),

                      Row(
                        children: <Widget>[
                          Image.asset("assets/icon/sent-mail.png", width: 20),
                          Text(" DISTANCE TO REQUEST IN 4.25 MILES", style: TextStyle(color: Colors.grey),)
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 40),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("VIEW INVOICE", style: TextStyle(fontSize: 16, color: Color(0xff2d79e6), fontWeight: FontWeight.bold),),
                            ),
                            Expanded(
                              child: Center(child: Text("\$60", style: TextStyle(fontSize: 16, color: Color(0xff2d79e6), fontWeight: FontWeight.bold),))
                            ),
                          ],
                        ),
                      ),

                      Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(height: 20),
                      Text("This is test description for request", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}