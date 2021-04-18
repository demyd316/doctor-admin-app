
import 'package:doctorgo_doctor/views/home/myStatisticsPage.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();

  bool menstruacion;
  bool startValue;
  bool notesValue;
  bool protectionValue;
  @override
  void initState() {
    menstruacion = false;
    startValue = true;
    notesValue = true;
    protectionValue = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 240,
              padding: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21.0),
                  bottomLeft: Radius.circular(21.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment(-1.21, -1.65),
                  end: Alignment(1.16, 1.46),
                  colors: [
                    Color(0xff2d79e6),
                    Color(0xff053476)
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },  
                                child: Icon(Icons.arrow_back_ios, color: Colors.white,),
                              ),
                            ],
                          ),
                        ),
                        Text("My Profile", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  
                                },
                                child: Image.asset("assets/icon/pen.png", width: 25),
                              ),

                              SizedBox(width: 5),

                              GestureDetector(
                                onTap: (){
                                  
                                },
                                child: Image.asset("assets/icon/setting.png", width: 25),
                              ),

                              SizedBox(width: 5),

                              Icon(Icons.notifications_none, color: Colors.white, size: 25,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/images/doctor_with_nurse.jpg"),
                        ),

                        SizedBox(width: 15),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Hello, John Wick", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                            Text("3539 Hill Haven Drive Tacoma...", style: TextStyle(fontSize: 13, color: Colors.white),),
                            Row(
                              children: <Widget>[
                                Text("503-318-3125", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                Text("john@email.com", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              top: 180,
              child: Padding(
                padding: EdgeInsets.only(bottom:12.0),
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: TabBar(
                          labelColor: Colors.black,
                          indicatorColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(
                              icon: Text("History", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ), 

                            Tab(
                              icon: Text("Reviews", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ), 

                            Tab(
                              icon: Text("Wallet", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ), 
                          ],
                        ), 
                      ),
                      Expanded(
                        child: Container(
                          child: TabBarView(children: [history(), reviews(), wallet()])
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
  Widget history(){
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CalendarCarousel<Event>(
            prevDaysTextStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
            nextDaysTextStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
            onDayPressed: (DateTime date, List<Event> events) {
              this.setState(() => _currentDate = date);
              events.forEach((event) => print(event.title));
            },
            weekendTextStyle: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            weekdayTextStyle: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            daysTextStyle: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            headerTextStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            showHeaderButton: true,
            leftButtonIcon: Icon(Icons.keyboard_arrow_left, color: Colors.black,),
            rightButtonIcon: Icon(Icons.keyboard_arrow_right, color: Colors.black,),
            headerMargin: EdgeInsets.only(bottom: 0, top: 0),
            thisMonthDayBorderColor: Colors.grey,
            weekFormat: true,
            height: 130.0,
            selectedDateTime: _currentDate2,
            showIconBehindDayText: true,
            customGridViewPhysics: NeverScrollableScrollPhysics(),
            markedDateShowIcon: true,
            markedDateIconMaxShown: 2,
            selectedDayButtonColor: Color(0xff2d79e6),
            selectedDayTextStyle: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            todayTextStyle: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            markedDateIconBuilder: (event) {
              return event.icon;
            },
            minSelectedDate: _currentDate.subtract(Duration(days: 360)),
            maxSelectedDate: _currentDate.add(Duration(days: 360)),
            todayButtonColor: Colors.grey,
            todayBorderColor: Colors.green,
            markedDateMoreShowTotal: true, 
          ),

          SizedBox(
            height: 8
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 3,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){

                                },
                                child: Text("VIEW DETAILS", style: TextStyle(color: Color(0xff144fa2), fontWeight: FontWeight.bold),)
                              )
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
                                    child: Text("Dermitologist", style: TextStyle(color: Color(0xff144fa2), fontWeight: FontWeight.bold),)
                                  )
                                ],
                              ),
                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10),
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

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("#1546897562"),

                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    color: Color(0xff1551a5),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star, color: Color(0xffffb745), size: 16,),
                                        Text("4.5", style: TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                    color: Color(0xffd8ffe6),
                                    child: Text("COMPLETED", style: TextStyle(color: Color(0xff00cf4c), fontWeight: FontWeight.bold),)
                                  ),
                                ],
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
    );
  }

  Widget reviews(){
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
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
                            Text("Anonymous", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Row(
                              children: <Widget>[
                                StarRating(
                                  starCount: 5,
                                  rating: 4.5,
                                  color: Color(0xff144fa2),
                                  size: 15,
                                ),
                                Text("4.5")
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Wow! I didn't know that there is such a cool spot so close to my home town! You guys need to see that!"
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("2 HOURS AGO")
                      ],
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

  Widget wallet(){
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MyStatisticsPage()),
              );
            },
            child: Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Image.asset("assets/icon/chart.png", width: 50,),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Statistics", style: TextStyle(fontSize: 20, color: Colors.grey),),
                          Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text("Day", style: TextStyle(color: Colors.grey),),
                              Text("Month", style: TextStyle(color: Colors.grey),),
                              Text("Year", style: TextStyle(color: Colors.grey),),
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

          Card(
            elevation: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Image.asset("assets/icon/register.png", width: 50,),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Subscription Information", style: TextStyle(fontSize: 20, color: Colors.grey),),
                        Text("- No subscription", style: TextStyle(color: Colors.grey),),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        Text("Change subscription", style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ); 
  }
}
