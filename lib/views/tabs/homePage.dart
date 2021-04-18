import 'package:doctorgo_doctor/views/custom/noShowModal.dart';
import 'package:doctorgo_doctor/views/home/billing/billing_page.dart';
import 'package:doctorgo_doctor/views/home/blocking_appointments_page.dart';
import 'package:doctorgo_doctor/views/home/clinic_history.dart';
import 'package:doctorgo_doctor/views/home/followup/followup_page.dart';
import 'package:doctorgo_doctor/views/home/myProfilePage.dart';
import 'package:doctorgo_doctor/views/tabs/medical_prescription.dart';
import 'package:doctorgo_doctor/views/home/new_appointments/add_new_appointment.dart';
import 'package:doctorgo_doctor/views/home/request_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  bool careRequest;

  @override
  void initState() {
    careRequest = false;
    super.initState();
  }

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
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MyProfilePage()),
                      );
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.only(left: 15),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Container(
                              width: 35,
                              height: 35,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Great news Frederich!", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),)
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.notifications_none, color: Colors.white, size: 33,),
                    ],
                  ),
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
              padding: EdgeInsets.only(top: 120, left: 8, right: 8, bottom: 20),
              child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Today you will attend 5 patients", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.grey),),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 22,
                              width: 22,
                              child: Center(
                                child: Text("?", 
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12.5)
                              ),
                            ),
                            Transform.scale(
                              scale: 1.2,
                              child:  Switch(
                                value: careRequest,
                                onChanged: (value){
                                  setState(() {
                                    careRequest = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

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
                                            Navigator.push(
                                              context, 
                                              MaterialPageRoute(builder: (_) => RequestDetailsPage()),
                                            );
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
                                              child: Text("#1546897562")
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
                                                child: Text("Type of appointment", style: TextStyle(color: Colors.grey),)
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
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

                                        IconButton(
                                          onPressed: (){
                                            showModalBottomSheet(
                                              isScrollControlled: true,
                                              context: context,
                                              builder: (context) {
                                                return bottomSheet();
                                              },
                                            );
                                          },
                                          icon: Icon(Icons.more_vert)
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => AddNewAppointment()),
              );
            },
            child: Icon(Icons.add, color: Colors.white,),
          ),
          SizedBox(
            height: 10
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => BlockingAppointmentsPage()),
              );
            },
            child: Image.asset("assets/icon/blockAppointment.png", width: 50)
          )
        ],
      ),
    );
  }

  Widget bottomSheet(){
    return Container(
      height: 250,
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icon/Rectangle.png"),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("JOHNSON SMITH", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Text("#1546897562")
                    ],
                  ),
                ],
              ),

              MaterialButton(
                color: Color(0xff1e5fbc),
                onPressed: (){

                },
                child: Row(
                  children: <Widget>[
                    Icon(Icons.check, size: 18, color: Colors.white,),
                    SizedBox(width: 5),
                    Text(
                      "Start", 
                      style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10),

          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1.6,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                            child: Image.asset("assets/icon/Laboratory.png"),
                          ),
                        ),
                      ),
                      Text("Call patient", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => NoShowModal(),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                              child: Image.asset("assets/icon/Laboratory.png"),
                            ),
                          ),
                        ),
                        Text("No show", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ClinicHistory()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                              child: Image.asset("assets/icon/Laboratory.png"),
                            ),
                          ),
                        ),
                        Text("Clinic history", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => MedicalPrescription(fromBook: true,)),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                              child: Image.asset("assets/icon/Laboratory.png"),
                            ),
                          ),
                        ),
                        Text("Medical\nprescription",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => FollowupPage()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                              child: Image.asset("assets/icon/Laboratory.png"),
                            ),
                          ),
                        ),
                        Text("Followup", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BillingPage(fromBook: true,)),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                              child: Image.asset("assets/icon/Laboratory.png"),
                            ),
                          ),
                        ),
                        Text("Billing", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}