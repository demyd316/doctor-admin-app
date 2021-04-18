import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter/material.dart';
class DateTimeSelect extends StatefulWidget {
  @override
  _DateTimeSelectState createState() => _DateTimeSelectState();
}

class _DateTimeSelectState extends State<DateTimeSelect> {

  String timeValue;

  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(21.0),
                        bottomLeft: Radius.circular(21.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(-1.6, 2.17),
                        end: Alignment(0.53, -1.52),
                        colors: [
                          const Color(0xff2d79e6),
                          const Color(0xff093d87)
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 43, left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, color: Colors.white,),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 42),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Select a Time Slot", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold), ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 85),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.all(12),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                height: 80, 
                                width: 80,
                                margin: EdgeInsets.only(left: 30, right: 20),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Apollo Munich", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, ),),
                                  Text("BSc, MBBS, DOVL, MD-Dermitol...", style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 170,
                            child: CalendarCarousel<Event>(
                              onDayPressed: (DateTime date, List<Event> events) {
                                this.setState(() => _currentDate = date);
                                events.forEach((event) => print(event.title));
                              },
                              prevDaysTextStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                              nextDaysTextStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
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
                              leftButtonIcon: Icon(Icons.keyboard_arrow_left),
                              rightButtonIcon: Icon(Icons.keyboard_arrow_right),
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
                          ),

                          Row(
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 30.0,
                                child: Center(
                                  child: Text("Morning")
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      const Color.fromRGBO(247, 238, 170, 1),
                                      const Color.fromRGBO(239, 197, 203, 1)
                                    ],
                                    stops: [0.0, 1.0],
                                  ),
                                ),
                              ),
                            ]
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "mZero";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "mZero" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.00", style: TextStyle(color: timeValue == "mZero" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "mFive";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "mFive" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.05", style: TextStyle(color: timeValue == "mFive" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "mTen";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "mTen" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.10", style: TextStyle(color: timeValue == "mTen" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "mFifteen";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "mFifteen" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.15", style: TextStyle(color: timeValue == "mFifteen" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "mTwenty";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "mTwenty" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.20", style: TextStyle(color: timeValue == "mTwenty" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "mTwentyFive";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "mTwentyFive" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.25", style: TextStyle(color: timeValue == "mTwentyFive" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "mThirty";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "mThirty" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.30", style: TextStyle(color: timeValue == "mThirty" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "mThirtyFive";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "mThirtyFive" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.35", style: TextStyle(color: timeValue == "mThirtyFive" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "mForty";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "mForty" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.40", style: TextStyle(color: timeValue == "mForty" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "mFortyFive";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "mFortyFive" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.45", style: TextStyle(color: timeValue == "mFortyFive" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),
                              ],
                            ),
                          ),


                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 30.0,
                                  child: Center(
                                    child: Text("Afternoon")
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        const Color.fromRGBO(215, 211, 244, 1),
                                        const Color.fromRGBO(198, 241, 234, 1)
                                      ],
                                      stops: [0.0, 1.0],
                                    ),
                                  ),
                                ),
                              ]
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "aTwelve";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "aTwelve" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("12.00", style: TextStyle(color: timeValue == "aTwelve" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "aOne";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "aOne" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("01.00", style: TextStyle(color: timeValue == "aOne" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),
                                
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "aTwo";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "aTwo" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("02.00", style: TextStyle(color: timeValue == "aTwo" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "aThree";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "aThree" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("03.00", style: TextStyle(color: timeValue == "aThree" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "aFour";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "aFour" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("04.00", style: TextStyle(color: timeValue == "aFour" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 140,
                                  height: 30.0,
                                  child: Center(
                                    child: Text("Evening & Night")
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        const Color.fromRGBO(148, 226, 238, 1),
                                        const Color.fromRGBO(177, 237, 237, 1)
                                      ],
                                      stops: [0.0, 1.0],
                                    ),
                                  ),
                                ),
                              ]
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "eFive";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "eFive" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("05.00", style: TextStyle(color: timeValue == "eFive" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "eSix";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "eSix" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("06.00", style: TextStyle(color: timeValue == "eSix" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "eSeven";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "eSeven" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("07.00", style: TextStyle(color: timeValue == "eSeven" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "eEight";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "eEight" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("08.00", style: TextStyle(color: timeValue == "eEight" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "eNine";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "eNine" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("09.00", style: TextStyle(color: timeValue == "eNine" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      timeValue = "eTen";
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: timeValue == "eTen" ? Color(0xff2d79e6) : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12.5)
                                    ),
                                    child: Text("10.00", style: TextStyle(color: timeValue == "eTen" ? Colors.white : Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width*2/5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Book", style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(61, 140, 255, 1),
                                borderRadius: BorderRadius.circular(25)
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}