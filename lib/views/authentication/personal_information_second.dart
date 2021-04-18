import 'package:doctorgo_doctor/views/authentication/add_clinic.dart';
import 'package:flutter/material.dart';

class PersonalInformationSecond extends StatefulWidget {
  @override
  _PersonalInformationSecondState createState() => _PersonalInformationSecondState();
}

enum SingingCharacter { male, female, other }

class _PersonalInformationSecondState extends State<PersonalInformationSecond> {
  SingingCharacter _character = SingingCharacter.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    'Personal\nInformation',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      height: 1.24,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 10),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Education Qualifications',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 50.0,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        )
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29.0),
                      color: Color(0xd1e3eaf5),
                      border:
                          Border.all(width: 5.0, color: Color(0xd1e3eaf5),),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Degree',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 50.0,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        )
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29.0),
                      color: Color(0xd1e3eaf5),
                      border:
                          Border.all(width: 5.0, color: Color(0xd1e3eaf5),),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'College/University',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 50.0,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        )
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29.0),
                      color: Color(0xd1e3eaf5),
                      border:
                          Border.all(width: 5.0, color: Color(0xd1e3eaf5),),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Experience',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: const Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),

                Container(
                  height: 50,
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  width: MediaQuery.of(context).size.width*0.9,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: "1 year",
                      isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down),
                      onChanged: (String value){

                      },
                      items: <String>["1 year", "2 year", "3 year", "4 year", "5 year"]
                        .map<DropdownMenuItem<String>>((String value){
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: TextStyle(fontWeight: FontWeight.w400),),
                          );
                        }).toList(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xd1e3eaf5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Insurance companies',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  width: MediaQuery.of(context).size.width*0.9,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: "Sucre",
                      isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down),
                      onChanged: (String value){

                      },
                      items: <String>["Sucre"]
                        .map<DropdownMenuItem<String>>((String value){
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: TextStyle(fontWeight: FontWeight.w400),),
                          );
                        }).toList(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xd1e3eaf5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 38,
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Center(child: Text("Ecuasanitas", style: TextStyle(color: Colors.white),)),
                          decoration: BoxDecoration(
                            color: Color(0xff3c94ff),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),

                        Container(
                          height: 38,
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Center(child: Text("Humana", style: TextStyle(color: Colors.white),)),
                          decoration: BoxDecoration(
                            color: Color(0xff3c94ff),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),

                        Container(
                          height: 38,
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Center(child: Text("BMI", style: TextStyle(color: Colors.white),)),
                          decoration: BoxDecoration(
                            color: Color(0xff3c94ff),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 30),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: InkWell(
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddClinic())),
                  child: Container(
                    width: 288.0,
                    height: 52.0,
                    alignment: Alignment.center,
                    child: Text(
                      'Next'.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(79.0),
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(1.05, 1.08),
                        colors: [Color(0xff3c94ff), Color(0xff3e83ff)],
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
