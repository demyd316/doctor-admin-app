
import 'package:doctorgo_doctor/views/social_network/commentPage.dart';
import 'package:doctorgo_doctor/views/social_network/detailPage.dart';
import 'package:doctorgo_doctor/views/social_network/newPublicationPage.dart';
import 'package:flutter/material.dart';

class SocialNetwork extends StatefulWidget {
  @override
  _SocialNetworkState createState() => _SocialNetworkState();
}

class _SocialNetworkState extends State<SocialNetwork> {

  bool visible = false;

  @override
  void initState() {
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
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.sort, color: Colors.white,),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Logo", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),)
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.notifications_none, color: Colors.white, size: 33,),
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
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
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
              padding: EdgeInsets.only(top: 120, left: 25, right: 25, bottom: 20),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Social Network", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),),
                      ],
                    ),
                  ),

                  Expanded(
                    child: MediaQuery.removePadding(
                      removeTop: true,
                      removeBottom: true,
                      context: context,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: doctorCard,
                      ),
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => NewPublicationPage())
          );
        },
        child: Image.asset("assets/icon/add2.png", width: 50),
      ),
    );
  }

  Widget doctorCard(BuildContext context, int index){
    return Card(
      elevation: 3,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => DetailPage())
          );
        },
        child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.more_horiz, color: Colors.grey,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 35,
                        height: 35,
                        margin: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/icon/gettyimages-1.png"),
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Dr. Simon Holf", style: TextStyle(fontWeight: FontWeight.bold,),),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text("Neurocirujano", style: TextStyle(color: Colors.grey, fontSize: 12),)
                          )
                        ],
                      ),
                    ],
                  ),

                  Text("4 hours ago", style: TextStyle(color: Colors.grey, fontSize: 13),),
                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 15, bottom: 8),
                child: Image.asset("assets/icon/medicinestudent.png"),
              ),

              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has bee the industry's standard dummy text ever since"),
              
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      visible = !visible;
                    });
                  },
                  child: Text("See more", style: TextStyle(color: Color.fromRGBO(34, 113, 231, 1)),)
                ),
              ),

              Visibility(
                visible: visible,
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has bee the industry's standard dummy text ever since")
              ),

              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("120 Likes", style: TextStyle(color: Colors.grey),),
                    Text("100 Comment", style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ),

              Divider(
                thickness: 1,
                color: Colors.grey,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 25,
                        width: 25,
                        child: Image.asset("assets/icon/gestures.png")
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, top: 4 ),
                        child: Text("Like", style: TextStyle(color: Color.fromRGBO(34, 113, 231, 1), fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => CommentPage()),
                      );
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 20,
                          width: 20,
                          child: Image.asset("assets/icon/interface.png")
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5 ),
                          child: Text("Comment", style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}