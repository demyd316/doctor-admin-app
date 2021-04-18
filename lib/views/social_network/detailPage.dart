import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              child: Image.asset("assets/images/beach_woman.jpg", fit: BoxFit.cover),
            ),

            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height*0.6,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Nutrition", style: TextStyle(fontSize: 22, color: Color.fromRGBO(128, 2, 2, 1)),),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 8),
                      child: Text("The best foods for children under 5", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),)
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset("assets/icon/clock.png", width: 15), 
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 50),
                          child: Text("13 sec ago", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                        ),
                        Image.asset("assets/icon/like.png", width: 15), 
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("850", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),)
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 25, bottom: 25),
                      child: Text("Author's name, date", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),),
                    ),

                    Expanded(
                      child: Container(
                        child: Text(
                          "sdfsfasfafdsfgsafdasdfasgadgasdfasdfasdfsadfasdfsdfsfasfafdsfgsafdasdfasgadgasdfasdfasdfsadfasdfsdfsfasfafdsfgsafdasdfasgadgasdfasdfasdfsadfasdfsdfsfasfafdsfgsafdasdfasgadgasdfasdfasdfsadfasdfsdfsfasfafdsfgsafdasdfasgadgasdfasdfasdfsadfasdfsdfsfasfafdsfgsafdasdfasgadgasdfasdfasdfsadfasdfsdfsfasfafdsfgsafdasdfasgadgasdfasdfasdfsadfasdfsdfsfasfafdsfgsafdasdfasgadgasdfasdfasdfsadfasdfsdfsfasfafdsfgsafdasdfasgadgasdfasdfasdfsadfasdf",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(233, 238, 248, 1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 43, left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.close, color: Colors.grey,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}