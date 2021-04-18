import 'package:doctorgo_doctor/views/tabs/tabsPage.dart';
import 'package:flutter/material.dart';

class AddPhotos extends StatefulWidget {
  @override
  _AddPhotosState createState() => _AddPhotosState();
}

enum SingingCharacter { male, female, other }

class _AddPhotosState extends State<AddPhotos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Add\nPhotos',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w800,
                  height: 1.24,
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: 10),
            Text(
              'Steps (1/5)',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: const Color(0xff606060),
                letterSpacing: 0.644,
              ),
              textAlign: TextAlign.left,
            ),
            Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    bottom: 1,
                    child: Container(
                      height: 30,
                      width: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Container(
                          height: 25,
                          width: 25,
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(25, 86, 174, 1),
                            child: Icon(Icons.add, color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ), 
            Center(child: Padding(
              padding: EdgeInsets.only(top: 25, bottom: 15),
              child: Text("Dr. Jhon Smith", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),))
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Center(child: Text("BSc, MBBS, DDVL, MD-Dertimologist", style: TextStyle(color: Colors.grey),))
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 70,
                  width: 85,
                  margin: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    child: Image.asset("assets/images/therapist_img1.jpeg", fit: BoxFit.cover,),
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),

                Container(
                  height: 70,
                  width: 85,
                  margin: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    child: Image.asset("assets/images/therapist_img2.jpeg", fit: BoxFit.cover,),
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),

                Container(
                  height: 70,
                  width: 85,
                  margin: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    child: Image.asset("assets/images/therapist_img3.png", fit: BoxFit.cover,),
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),

                MaterialButton(
                  onPressed: (){

                  },
                  child: Icon(Icons.add, color: Colors.white, size: 45,),
                  color: Color.fromRGBO(25, 86, 174, 1),
                  minWidth: 80,
                  height: 70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, left: 15, bottom: 20),
              child: Center(
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width*4/5,
                  color: Color.fromRGBO(71, 144, 255, 1),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => TabsPage())
                    );
                  },
                  height: 45, 
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}