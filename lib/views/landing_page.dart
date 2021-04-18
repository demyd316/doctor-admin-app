import 'package:doctorgo_doctor/views/authentication/account_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 75),
              child: Text("Patients are waiting for you\nRegister now!", 
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(139, 114, 103, 1), fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )
            ), 
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text("Choose the language of your preference", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),)
            ), 
            Stack(
              children: <Widget>[
                Container(
                  width: 306.0,
                  height: 59.0,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(86.0),
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(1.05, 1.08),
                      colors: [
                        const Color(0xff3c94ff),
                        const Color(0xff3e83ff)
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Text(
                      'English',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 0.15,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Container(
                  width: 173.0,
                  height: 59.0,
                  child: Text("Española",style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    letterSpacing: 0.15,
                    fontWeight: FontWeight.w500,
                  ),),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(86.0),
                    gradient: LinearGradient(
                      begin: Alignment(-1.21, -1.65),
                      end: Alignment(1.16, 1.46),
                      colors: [
                        const Color(0xff2d79e6),
                        const Color(0xff053476)
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 45),
              child: MaterialButton(
                minWidth: 135,
                color: Colors.white,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AccountInformation()),
                  );
                },
                height: 45, 
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(71, 144, 255, 1)
                  ),
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color.fromRGBO(71, 144, 255, 1)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}