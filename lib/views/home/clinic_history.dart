import 'package:flutter/material.dart';

class ClinicHistory extends StatefulWidget {
  @override
  _ClinicHistoryState createState() => _ClinicHistoryState();
}

class _ClinicHistoryState extends State<ClinicHistory> {
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (_) => TabsPage()),
                      // );
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.keyboard_arrow_left, color: Colors.white,),
                  ),
                  Text("Clinic history", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
                  Icon(Icons.keyboard_arrow_left, color: Colors.transparent,),
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
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icon/Rectangle.png"),
                  ),
                  SizedBox(width: 15),
                  Text("Justin Ford", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: TabBar(
                            labelColor: Colors.black,
                            indicatorColor: Colors.grey,
                            indicatorSize: TabBarIndicatorSize.tab,
                            tabs: [Tab(text: "Personal information"), Tab(text: "Clinic history",)],
                          ), 
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 8),
                            child: TabBarView(children: [personalInformation(), clinicHistory()])
                          ),
                        ),
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

  Widget personalInformation(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Date of birth", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                  Text("12-07-1980", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
              Divider(thickness: 0.5, color: Colors.grey,)
            ],
          ),

          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Blood group", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                  Text("ORH+", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
              Divider(thickness: 0.5, color: Colors.grey,)
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Height", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                  Text("172 cm", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
              Divider(thickness: 0.5, color: Colors.grey,)
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Weight", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                  Text("41.5 kg", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
              Divider(thickness: 0.5, color: Colors.grey,)
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Marital status", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                  Text("Single", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
              Divider(thickness: 0.5, color: Colors.grey,)
            ],
          ),
          Text("Alergies", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: List.generate(3, (index) => Container(
                height: 33,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Center(child: Text("MALE", style: TextStyle(color: Colors.grey),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.grey)
                ),
              ),)
            ),
          ),
          Text("Current medication", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: List.generate(3, (index) => Container(
                height: 33,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Center(child: Text("MALE", style: TextStyle(color: Colors.grey),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.grey)
                ),
              ),)
            ),
          ),
          Text("Past Medication", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: List.generate(3, (index) => Container(
                height: 33,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Center(child: Text("MALE", style: TextStyle(color: Colors.grey),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.grey)
                ),
              ),)
            ),
          ),
          Text("Injuries", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: List.generate(3, (index) => Container(
                height: 33,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Center(child: Text("MALE", style: TextStyle(color: Colors.grey),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.grey)
                ),
              ),)
            ),
          ),
          Text("Surgeries", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: List.generate(3, (index) => Container(
                height: 33,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Center(child: Text("MALE", style: TextStyle(color: Colors.grey),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.grey)
                ),
              ),)
            ),
          ),
          Text("Smoking habits", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: List.generate(3, (index) => Container(
                height: 33,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Center(child: Text("MALE", style: TextStyle(color: Colors.grey),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.grey)
                ),
              ),)
            ),
          ),
          Text("Alcohol consuption", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: List.generate(3, (index) => Container(
                height: 33,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Center(child: Text("MALE", style: TextStyle(color: Colors.grey),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.grey)
                ),
              ),)
            ),
          ),
          Text("Activity level", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: List.generate(3, (index) => Container(
                height: 33,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Center(child: Text("MALE", style: TextStyle(color: Colors.grey),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.grey)
                ),
              ),)
            ),
          ),
          Text("Food preference", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: List.generate(3, (index) => Container(
                height: 33,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Center(child: Text("MALE", style: TextStyle(color: Colors.grey),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.grey)
                ),
              ),)
            ),
          ),
          Text("Ocupation", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              children: List.generate(3, (index) => Container(
                height: 33,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Center(child: Text("MALE", style: TextStyle(color: Colors.grey),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.grey)
                ),
              ),)
            ),
          ),
        ],
      ),
    );
  }

  Widget clinicHistory(){
    return Column(
      children: List.generate(2, (index) => GestureDetector(
        onTap: (){

        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("17", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                  Text("Nov", style: TextStyle(color: Colors.grey),),
                  Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                ],
              ),

              SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 55,
                          width: 55,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                            Text("MBBS, DOMS, MS-Opthal..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                            Text("Opthalmologist", style: TextStyle(color: Colors.grey, fontSize: 12),),
                            Text("26 years of experience", style: TextStyle(color: Colors.grey, fontSize: 12),),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 13,
                                  width: 13,
                                  child: Image.asset('assets/images/location_blue.png'),
                                ),
                                Text("Andheri East", style: TextStyle(color: Colors.grey, fontSize: 12),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    MaterialButton(
                      onPressed: (){

                      },
                      minWidth: 200,
                      child: Text("Diagnistic"),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 2, color: Colors.grey)
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.remove_red_eye)
            ],
          ),
        ),
      ),),
    );
  }
}