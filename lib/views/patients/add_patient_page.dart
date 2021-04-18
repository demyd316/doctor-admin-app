import 'package:doctorgo_doctor/views/custom_widgets/custom_text_form_field.dart';
import 'package:doctorgo_doctor/views/custom_widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class AddPatientPage extends StatefulWidget {
  @override
  _AddPatientPageState createState() => _AddPatientPageState();
}

class _AddPatientPageState extends State<AddPatientPage> {

  DateTime startDate;
  TextEditingController birthdayController = TextEditingController();
  DateFormat month = DateFormat("MMM");
  DateFormat date = DateFormat("dd");
  DateFormat year = DateFormat("yyyy");
  String gender;
  String bloodGroup;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Header(
              context,
              title: "Create patient",
              onTap: (){
                Navigator.pop(context);
              }
            ),
            
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 100,
                                width: 70,
                                child: Image.asset("assets/images/user2.png", fit: BoxFit.contain,)
                              ),
                              Text("26731")
                            ],
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                customTextFormField(
                                  context,
                                  onChanged: (value){

                                  },
                                  label: "Name",
                                ),
                                customTextFormField(
                                  context,
                                  onChanged: (value){

                                  },
                                  label: "Last Name",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      customTextFormField(
                        context,
                        onChanged: (value){

                        },
                        label: "Email",
                      ),

                      customTextFormField(
                        context,
                        onChanged: (value){

                        },
                        label: "Telephone contact",
                      ),



                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Sex", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 15),
                                padding: EdgeInsets.only(left: 20, right: 20),
                                width: MediaQuery.of(context).size.width*0.4,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: gender,
                                    isExpanded: true,
                                    icon: Icon(Icons.arrow_drop_down),
                                    onChanged: (String value){
                                      setState(() {
                                        gender = value;
                                      });
                                    },
                                    items: <String>["Male", "Female"]
                                      .map<DropdownMenuItem<String>>((String value){
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Blood Group", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),

                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 15),
                                padding: EdgeInsets.only(left: 20, right: 20),
                                width: MediaQuery.of(context).size.width*0.4,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: bloodGroup,
                                    isExpanded: true,
                                    icon: Icon(Icons.arrow_drop_down),
                                    onChanged: (String value){
                                      setState(() {
                                        bloodGroup = value;
                                      });
                                    },
                                    items: <String>["O+", "O-", "A+", "A-", "B+", "B-", "AB+"]
                                      .map<DropdownMenuItem<String>>((String value){
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ],
                          ),
                        ],                      
                      ),

                      Stack(
                        children: <Widget>[
                          Container(
                            child: customTextFormField(
                              context,
                              onChanged: (value){
                                
                              },
                              controller: birthdayController,
                              label: "Date of birth"
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              DatePicker.showDatePicker(context,
                                showTitleActions: true,
                                minTime: DateTime.now(),
                                maxTime: DateTime(2999, 1, 1, 20, 50),
                                onChanged: (date) {
                                },
                              onConfirm: (value) {
                                setState(() {
                                  startDate =  value;
                                  birthdayController.text = date.format(startDate) + " "
                                    + month.format(startDate) + " "
                                    + year.format(startDate);
                                });
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.6,
                              height: 75,
                              color: Colors.transparent,
                            ),
                          ),
                        ],
                      ),

                      customTextFormField(
                        context,
                        onChanged: (value){
                          
                        },
                        label: "Province"
                      ),

                      customTextFormField(
                        context,
                        onChanged: (value){
                          
                        },
                        label: "City"
                      ),

                      customTextFormField(
                        context,
                        onChanged: (value){
                          
                        },
                        label: "Street address"
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
}