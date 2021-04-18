import 'package:doctorgo_doctor/views/authentication/availability_screen.dart';
import 'package:doctorgo_doctor/views/custom_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ClinicInformation extends StatefulWidget {
  @override
  _ClinicInformationState createState() => _ClinicInformationState();
}

enum SingingCharacter { male, female, other }
enum Character {yes, no}

class _ClinicInformationState extends State<ClinicInformation> {
  SingingCharacter _character = SingingCharacter.male;
  Character status = Character.yes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color.fromRGBO(244, 247, 253, 1),
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Clinic\nInformation',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          height: 1.24,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      MaterialButton(
                        color: Color.fromRGBO(167, 241, 146, 1),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => AvailabilityScreen()),
                          );
                        },
                        height: 50, 
                        child: Text(
                          "Add",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 5, color: Color.fromRGBO(255, 69, 0, 1)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Steps (1/2)',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: const Color(0xff606060),
                    letterSpacing: 0.644,
                  ),
                  textAlign: TextAlign.left,
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Name clinic',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: customTextFormField(
                    context,
                    onChanged: (value){
                      
                    },
                    label: "Name clinic"
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Province',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: customTextFormField(
                    context,
                    onChanged: (value){
                      
                    },
                    label: "Province"
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'City',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: customTextFormField(
                    context,
                    onChanged: (value){

                    },
                    label: "City"
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Geolocalization',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("92/6, 3rd Floor, Outer Ring Road, Chandra Layout")
                ),
                
                Image.asset("assets/images/map01.png"),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Honorarios',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
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
                    'Do more doctors work at the clinic?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Color(0xff8193ae),
                      letterSpacing: 0.644,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: Character.yes,
                      groupValue: status,
                      onChanged: (Character value) {
                        setState(() {
                          status = value;
                        });
                      },
                    ),
                    Text("Yes"),
                    Radio(
                      value: Character.no,
                      groupValue: status,
                      onChanged: (Character value) {
                        setState(() {
                          status = value;
                        });
                      },
                    ),
                    Text("No"),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    Text("1"),
                    Radio(
                      value: SingingCharacter.female,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    Text("2-5"),
                    Radio(
                      value: SingingCharacter.other,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    Text("5+"),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Medical Specialities',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
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
                      value: "Psychiatrist",
                      isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down),
                      onChanged: (String value){

                      },
                      items: <String>["Psychiatrist", "Dermitologist", "Trichologist", "Cosmetologist"]
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
                          child: Center(child: Text("Trichologist", style: TextStyle(color: Colors.white),)),
                          decoration: BoxDecoration(
                            color: Color(0xff3c94ff),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),

                        Container(
                          height: 38,
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Center(child: Text("Cosmetologist", style: TextStyle(color: Colors.white),)),
                          decoration: BoxDecoration(
                            color: Color(0xff3c94ff),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),

                        Container(
                          height: 38,
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Center(child: Text("Dermitologist", style: TextStyle(color: Colors.white),)),
                          decoration: BoxDecoration(
                            color: Color(0xff3c94ff),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("You are part of a clinic", style: TextStyle(fontSize: 18),)
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,)
                  ),
                ),

                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("You are part of a clinic", style: TextStyle(fontSize: 18),)
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,)
                  ),
                ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: InkWell(
                  // onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PersonalInformationSecond())),
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
