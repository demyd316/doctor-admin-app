import 'package:doctorgo_doctor/views/authentication/add_photos.dart';
import 'package:flutter/material.dart';

class AddCertificate extends StatefulWidget {
  @override
  _AddCertificateState createState() => _AddCertificateState();
}

class _AddCertificateState extends State<AddCertificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(244, 247, 253, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Add\nCertificate',
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
              'Steps (1/4)',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: const Color(0xff606060),
                letterSpacing: 0.644,
              ),
              textAlign: TextAlign.left,
            ),

            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 50),
              color: Colors.white,
              child: Icon(Icons.add, size: 50,),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  'Upload Certificate',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff606060),
                    letterSpacing: 0.644,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
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
                      MaterialPageRoute(builder: (_) => AddPhotos())
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