import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class PrescriptionPage extends StatefulWidget {
  @override
  _PrescriptionPageState createState() => _PrescriptionPageState();
}

class _PrescriptionPageState extends State<PrescriptionPage> {

  bool beforeFood;
  int quantity = 1;
  int morningFrequency = 0;
  int noonFrequency = 0;
  int nightFrequency = 0;
  int duration = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 110.0,
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.keyboard_arrow_left, color: Colors.white,),
                  ),
                  Text("Prescription", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
                  Icon(Icons.keyboard_arrow_left, color: Colors.transparent,),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21.0),
                  bottomLeft: Radius.circular(21.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment(-1.6, 2.17),
                  end: Alignment(0.53, -1.52),
                  colors: [ 
                    Color(0xff2d79e6), 
                    Color(0xff093d87)
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),

            SizedBox(
              height: 10
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Injetion Terluz 0.25", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                          // Icon(Icons.keyboard_arrow_right),
                        ],
                      ),
                    ),

                    Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),

                    Text("Quantity", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
                    Container(
                      height: 35,
                      child: NumberPicker.horizontal(
                        initialValue: quantity,
                        minValue: 1,
                        maxValue: 200,
                        onChanged: (newValue){
                          setState(() {
                            quantity = newValue;
                          });
                        }
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(thickness: 1, color: Colors.grey,)
                    ),
                    Text("Dosage and Frequency", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
                    
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 120,
                                child: NumberPicker.integer(
                                  initialValue: morningFrequency,
                                  minValue: 0,
                                  maxValue: 100,
                                  itemExtent: 23,
                                  onChanged: (newValue){
                                    setState(() {
                                      morningFrequency = newValue;
                                    });
                                  }
                                ),
                              ),
                              Text("Morning", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),

                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 120,
                                child: NumberPicker.integer(
                                  initialValue: noonFrequency,
                                  minValue: 0,
                                  maxValue: 100,
                                  itemExtent: 25,
                                  onChanged: (newValue){
                                    setState(() {
                                      noonFrequency = newValue;
                                    });
                                  }
                                ),
                              ),

                              Text("Noon", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),

                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 120,
                                child: NumberPicker.integer(
                                  initialValue: nightFrequency,
                                  minValue: 0,
                                  maxValue: 100,
                                  itemExtent: 25,
                                  onChanged: (newValue){
                                    setState(() {
                                      nightFrequency = newValue;
                                    });
                                  }
                                ),
                              ),
                              Text("Night", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                beforeFood = true;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.5 - 18,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text("Before food", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                              ),
                              decoration: BoxDecoration(
                                color: beforeFood == true ? Colors.white : Colors.transparent,
                                border: Border.all(width: 0.5, color: Colors.black)
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              setState(() {
                                beforeFood = false;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.5 - 18,
                              padding: EdgeInsets.all(10),
                              child: Center(child: Text("After food", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                              decoration: BoxDecoration(
                                color: beforeFood == false ? Colors.white : Colors.transparent,
                                border: Border.all(width: 0.5, color: Colors.black)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text("Duration", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
                    ),

                    Container(
                      height: 35,
                      child: NumberPicker.horizontal(
                        initialValue: duration,
                        minValue: 1,
                        maxValue: 200,
                        onChanged: (newValue){
                          setState(() {
                            duration = newValue;
                          });
                        }
                      ),
                    ),

                    Container(
                      height: 40,
                      margin: EdgeInsets.only(top: 10, bottom: 15),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: MediaQuery.of(context).size.width*0.3,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: "Day(s)",
                          isExpanded: true,
                          icon: Icon(Icons.arrow_drop_down, color: Color(0xff2d79e6)),
                          onChanged: (String value){

                          },
                          items: <String>["Day(s)", "Weeks(s)", "Month(s)", "Year(s)"]
                            .map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),),
                              );
                            }).toList(),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(228, 235, 245, 1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Text("Indications", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),)
                    ), 

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ),
                    SizedBox(height: 30)
                  ],
                ),
              ),
            ),

            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    minWidth: MediaQuery.of(context).size.width*4/5,
                    color: Color.fromRGBO(71, 144, 255, 1),
                    height: 45, 
                    child: Text(
                      "Delete",
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

                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    minWidth: MediaQuery.of(context).size.width*4/5,
                    color: Color.fromRGBO(71, 144, 255, 1),
                    height: 45, 
                    child: Text(
                      "Save",
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}