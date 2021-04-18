import 'package:doctorgo_doctor/views/authentication/personal_information_first.dart';
import 'package:flutter/material.dart';

class AccountInformation extends StatefulWidget {
  @override
  _AccountInformationState createState() => _AccountInformationState();
}

enum SingingCharacter { male, female, other }

class _AccountInformationState extends State<AccountInformation> {
  SingingCharacter _character = SingingCharacter.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Account\nInformation',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    height: 1.24,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10),
                Text(
                  'Steps (1/8)',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff606060),
                    letterSpacing: 0.644,
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Full Name',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 316.0,
                    height: 45.0,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            padding: EdgeInsets.all(2),
                            child: Image.asset("assets/images/user.png")
                          ),
                          border: InputBorder.none,
                        )
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29.0),
                      color: Color(0xd1e3eaf5),
                      border:
                          Border.all(width: 5.0, color: Color(0x0c707070)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Gender',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Radio(
                        value: SingingCharacter.male,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      Text("Female"),
                      Radio(
                        value: SingingCharacter.female,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      Text("Male"),
                      Radio(
                        value: SingingCharacter.other,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      Text("Other"),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 316.0,
                    height: 45.0,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            padding: EdgeInsets.all(4),
                            child: Image.asset("assets/images/email.png")
                          ),
                          border: InputBorder.none,
                        )
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29.0),
                      color: Color(0xd1e3eaf5),
                      border:
                          Border.all(width: 5.0, color: Color(0x0c707070)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Age',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 316.0,
                    height: 45.0,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            padding: EdgeInsets.all(2),
                            child: Image.asset("assets/images/age.png")
                          ),
                          border: InputBorder.none,
                        )
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29.0),
                      color: Color(0xd1e3eaf5),
                      border:
                          Border.all(width: 5.0, color: Color(0x0c707070)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Height',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 316.0,
                    height: 45.0,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            padding: EdgeInsets.all(2),
                            child: Image.asset("assets/icon/height-1.png")
                          ),
                          border: InputBorder.none,
                        )
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29.0),
                      color: Color(0xd1e3eaf5),
                      border:
                        Border.all(width: 5.0, color: Color(0x0c707070)),
                    ),
                  ),
                ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: InkWell(
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PersonalInformationFirst())),
                  child: Container(
                    width: 288.0,
                    height: 52.0,
                    alignment: Alignment.center,
                    child: Text(
                      'Next'.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(79.0),
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(1.05, 1.08),
                        colors: [const Color(0xff3c94ff), const Color(0xff3e83ff)],
                        stops: [0.0, 1.0],
                      ),
                    ),
                  ),
                ),
              ),
            )


              ],
            ),
          ),
        ));
  }
}
