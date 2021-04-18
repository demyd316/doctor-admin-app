import 'package:doctorgo_doctor/views/custom/earningChart.dart';
import 'package:doctorgo_doctor/views/custom_widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class MyStatisticsPage extends StatefulWidget {
  @override
  _MyStatisticsPageState createState() => _MyStatisticsPageState();
}

class _MyStatisticsPageState extends State<MyStatisticsPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: width,
        height: height,
        child: Column(
          children: <Widget>[
            Header(
              context,
              title: "My Statistics",
              onTap: (){
                Navigator.pop(context);
              }
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Edit Your Rates", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Per Hour"),
                                  SizedBox(height: 8),
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    width: width*0.3,
                                    child: Center(child: Text("\$25")),
                                  ),
                                ],
                              ),

                              Column(
                                children: <Widget>[
                                  Text("Per Week"),
                                  SizedBox(height: 8),
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    width: width*0.3,
                                    child: Center(child: Text("\$1000")),
                                  ),
                                ],
                              ),

                              Column(
                                children: <Widget>[
                                  Text("Per Month"),
                                  SizedBox(height: 8),
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    width: width*0.3,
                                    child: Center(child: Text("\$3500")),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: <Widget>[
                                Text("Requests Statistics", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 10),
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
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70,
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("789", style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),),
                                      Text("Total Orders")
                                    ],
                                  ),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("\$7894", style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
                                      Text("Total Earnings")
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text("Days", style: TextStyle(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.bold),),
                                  Text("Week", style: TextStyle(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.bold),),
                                  Text("Months", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Text("CHOOSE YEAR 2019")
                            ),

                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("\$25", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                                      SizedBox(height: 8,),
                                      Expanded(
                                        child: EarningChart(context, 30.0)
                                      ),                                    
                                    ],
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Text("\$78", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                                      SizedBox(height: 8,),
                                      Expanded(
                                        child: EarningChart(context, 85.0)
                                      ),                                    
                                    ],
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Text("\$40", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                                      SizedBox(height: 8,),
                                      Expanded(
                                        child: EarningChart(context, 50.0)
                                      ),                                    
                                    ],
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Text("\$101", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                                      SizedBox(height: 8,),
                                      Expanded(
                                        child: EarningChart(context, 120.0)
                                      ),                                    
                                    ],
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Text("\$35", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                                      SizedBox(height: 8,),
                                      Expanded(
                                        child: EarningChart(context, 45.0)
                                      ),                                    
                                    ],
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Text("\$65", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                                      SizedBox(height: 8,),
                                      Expanded(
                                        child: EarningChart(context, 120.0)
                                      ),                                    
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 15,bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("789", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                                      Text("Total order", style: TextStyle(color: Colors.white),)
                                    ],
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Text("\$7894", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                                      Text("Total Earnings", style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                ],
                              ),
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
    );
  }
}