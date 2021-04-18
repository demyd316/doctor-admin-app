import 'package:flutter/material.dart';

class NewAppointment extends StatefulWidget {
  @override
  _NewAppointmentState createState() => _NewAppointmentState();
}

class _NewAppointmentState extends State<NewAppointment> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(top: 110),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: 50,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.all(8),
                        child: TextFormField(
                          style: TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                            hintText: "Search...",
                            contentPadding: EdgeInsets.all(0),
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.mic, color: Colors.grey,),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 165, left: 3, right: 3),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: newAppointment
                ),
              ),
            ),



            Container(
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.menu, color: Colors.white,),
                        Container(
                          height: 50,
                          width: 80,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: "Category",
                              icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                              onChanged: (String value){
                                
                              },
                              items: <String>["Category"]
                                .map<DropdownMenuItem<String>>((String value){
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value, style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w500),),
                                  );
                                }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                    const Color(0xff2d79e6),
                    const Color(0xff093d87)
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 42),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("New Appointment", style: TextStyle(color: Colors.white, fontSize: 20,),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget newAppointment(BuildContext context, int index){
    return  Card(
      elevation: 3,
      child: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/therapist_img2.jpeg"),
                            ),
                          ),
                          Text("Anonymous", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),)
                        ],
                      ),
                      Text("Order: 1546897562", style: TextStyle(color: Colors.grey),),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text("Dermitologist", style: TextStyle(fontSize: 15),)
                      ), 
                      Text("View Details".toUpperCase(), style: TextStyle(color: Color.fromRGBO(21, 80, 163, 1), fontSize: 13),)
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 35,
                            height: 35,
                            child: Image.asset("assets/images/chat_blue.png"),
                          ),

                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Image.asset("assets/images/call_blue.png"),
                          ),

                          Container(
                            width: 35,
                            height: 35,
                            child: Image.asset("assets/images/video_blue.png"),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Row(
                          children: <Widget>[
                            Text("60\$", style: TextStyle(color: Color.fromRGBO(16, 71, 148, 1), fontWeight: FontWeight.bold, fontSize: 20),),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text("1 Hour", style: TextStyle(color: Color.fromRGBO(16, 71, 148, 1)),)
                            ),
                          ],
                        ),
                      ),
                      Text("2 Hours ago".toUpperCase(), style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}