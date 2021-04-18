import 'package:flutter/material.dart';

class MyRequestsPage extends StatefulWidget {
  @override
  _MyRequestsPageState createState() => _MyRequestsPageState();
}

class _MyRequestsPageState extends State<MyRequestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 10, top: 45, right: 10),
              height: 230.0,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.arrow_back_ios, color: Colors.white,),
                      Text("My Request", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                      Icon(Icons.filter, color: Colors.white,)
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.all(8),
                        child: TextFormField(
                          style: TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                            hintText: "Search...",
                            contentPadding: EdgeInsets.all(0),
                            prefixIcon: Icon(Icons.search),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Active", style: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.bold, fontSize: 16),),
                      Text("Scheduled", style: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.bold, fontSize: 16),),
                      Text("Completed", style: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.bold, fontSize: 16),),
                    ],
                  ),

                ],
              ),

              decoration: BoxDecoration(
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
              padding: EdgeInsets.only(top: 200, left: 25, right: 25, bottom: 20),
              child: Column(
                  children: <Widget>[

                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Card(
                              elevation: 3,
                              child: Container(
                                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text("View Details".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Color.fromRGBO(21, 80, 163, 1)),),
                                      ],
                                    ),

                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 50,
                                          height: 50,
                                          margin: EdgeInsets.only(right: 20),
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage("assets/images/profile3.png"),
                                          ),
                                        ),

                                        Column( 
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("JOHNSON SMITH".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                            Padding(
                                              padding: EdgeInsets.only(top: 5),
                                              child: Text("#1546897562")
                                            )
                                          ],
                                        ),
                                      ],
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(top: 25),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.location_on, color: Color.fromRGBO(34, 113, 231, 1),),
                                          Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text("3539 Hill Haven Drive Tacoma, WA 98402", style: TextStyle(color: Colors.grey),)
                                          )
                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(top: 10, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Icon(Icons.access_time, color: Color.fromRGBO(34, 113, 231, 1),),
                                              Padding(
                                                padding: EdgeInsets.only(left: 15),
                                                child: Text("Time 11:30 am", style: TextStyle(color: Colors.grey),)
                                              )
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[
                                              Icon(Icons.calendar_today, color: Color.fromRGBO(34, 113, 231, 1),),
                                              Padding(
                                                padding: EdgeInsets.only(left: 15),
                                                child: Text("Date: 10/07/2019", style: TextStyle(color: Colors.grey),)
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            height: 20,
                                            width: 20,
                                            child: Image.asset("assets/icon/sent-mail.png")
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text("Distance to request in 4.25 miles", style: TextStyle(color: Colors.grey),)
                                          )
                                        ],
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: MaterialButton(
                                            minWidth: MediaQuery.of(context).size.width*2/7,
                                            color: Color.fromRGBO(255, 61, 61, 1),
                                            onPressed: (){
                                              
                                            },
                                            height: 45, 
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(Icons.close, color: Colors.white,),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 5),
                                                  child: Text(
                                                    "Reject",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      color: Colors.white
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: MaterialButton(
                                            minWidth: MediaQuery.of(context).size.width*2/7,
                                            color: Color.fromRGBO(30, 95, 188, 1),
                                            onPressed: (){
                                              
                                            },
                                            height: 45, 
                                            child: Row(
                                              children: <Widget>[
                                                Icon(Icons.check, color: Colors.white,),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 5),
                                                                                                  child: Text(
                                                    "Accept",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      color: Colors.white
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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