import 'package:doctorgo_doctor/views/custom_widgets/header.dart';
import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Header(context,
              title: "All comments",
              onTap: (){
                Navigator.pop(context);
              }
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                    itemBuilder: comment,
                    itemCount: 3,
                  ),
                ),
              ),
            ),

            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff4f6f8),
              child: Center(
                child: Card(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.85,
                    padding: EdgeInsets.only(left: 20, right: 5),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              suffixIcon: Icon(Icons.send, color: Colors.grey,),
                              hintText: "Type a comment",
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500)
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.add, color: Color(0xff4a00e0),),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget comment(BuildContext context, int index){
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile3.png"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset("assets/icon/blue_like.png", width: 25),
                  Text("120 likes", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),

              SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Sam Smith", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(width: 15),
                        Text("30 sec ago", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Text("Neuroduruja no", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("This medicine does not have much effect on people over 30 years old, please do not administer in high doses, it is very complex the magnituede of its resistance in the lungs of a smoker.")
                  ],
                ),
              ),
            ],
          ),
        ),

        Divider(thickness: 0.5, color: Colors.grey,)
      ],
    );
  }
}