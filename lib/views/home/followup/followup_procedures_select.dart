import 'package:doctorgo_doctor/views/home/followup/followup_page.dart';
import 'package:doctorgo_doctor/views/home/new_appointments/add_new_appointment.dart';
import 'package:doctorgo_doctor/views/home/new_appointments/add_new_procedure.dart';
import 'package:flutter/material.dart';

class FollowupProceduresSelect extends StatefulWidget {
  @override
  _FollowupProceduresSelectState createState() => _FollowupProceduresSelectState();
}

class _FollowupProceduresSelectState extends State<FollowupProceduresSelect> {
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
                  Text("Select", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => FollowupPage())
                      );
                    },
                    child: Text("Save", style: TextStyle(fontSize: 15, color: Colors.white),)
                  )
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

            SizedBox(height: 5,),

            Expanded(
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(8),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Body Pack", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.remove, color: Color(0xff2d79e6)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child: Text("1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                    ),
                                    Icon(Icons.add, color: Color(0xff2d79e6),)
                                  ],
                                ),
                              ],
                            ),
                            Divider(thickness: 0.5, color: Colors.grey,)
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Fuo", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.remove, color: Color(0xff2d79e6)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child: Text("12", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                    ),
                                    Icon(Icons.add, color: Color(0xff2d79e6),)
                                  ],
                                ),
                              ],
                            ),
                            Divider(thickness: 0.5, color: Colors.grey,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            MaterialButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AddNewProcedure()),
                );
              },
              minWidth: MediaQuery.of(context).size.width*0.7,
              color: Color.fromRGBO(71, 144, 255, 1),
              height: 45,
              child: Text(
                "Add new",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.5),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}