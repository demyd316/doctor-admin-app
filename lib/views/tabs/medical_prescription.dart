import 'package:doctorgo_doctor/views/custom/deletePatientModal.dart';
import 'package:doctorgo_doctor/views/home/clinic_history.dart';
import 'package:doctorgo_doctor/views/home/prescription/makePrescriptionPage.dart';
import 'package:doctorgo_doctor/views/home/prescription/prescriptionsPage.dart';
import 'package:doctorgo_doctor/views/tabs/patientsPage.dart';
import 'package:doctorgo_doctor/views/tabs/tabsPage.dart';
import 'package:flutter/material.dart';

class MedicalPrescription extends StatefulWidget {
  
  final bool fromBook;

  MedicalPrescription({@required this.fromBook});
  @override
  _MedicalPrescriptionState createState() => _MedicalPrescriptionState();
}

class _MedicalPrescriptionState extends State<MedicalPrescription>
  with SingleTickerProviderStateMixin {

  int tabIndex = 0;
  TabController _tabController;
  bool patientSelected = false;

  @override
  void initState() {
    print(widget.fromBook);
    _tabController = TabController(vsync: this, length: 3, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

   void _handleTabSelection() {
    setState(() {
      tabIndex = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Column(
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => TabsPage()),
                          );
                        },
                        child: Icon(Icons.keyboard_arrow_left, color: Colors.white,),
                      ),
                      Text("Medical prescription", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
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
                  height: 30
                ),

                widget.fromBook == false || widget.fromBook == null ? Visibility(
                  visible: !patientSelected,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => PatientsPage()),
                      ).then((value) {
                        if(value != null){
                          if(value == "selected"){
                            setState(() {
                              patientSelected = true;
                            });
                          }
                        }
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/icon/profile.png", width: 50,),
                        Text(" Selecting a patient...", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),)
                      ],
                    ),
                  ),
                ) : Container(),

                widget.fromBook == false || widget.fromBook == null ? Visibility(
                  visible: patientSelected,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ClinicHistory()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Image.asset("assets/images/profile3.png", width: 50,)
                            ),
                            GestureDetector(
                              onTap: (){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) => DeletePatientModal(),
                                );
                              },
                              child: Image.asset("assets/icon/delete.png", width: 20)
                            )
                          ],
                        ),
                        SizedBox(width: 10),
                        Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Samuel Sandrich", style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("34 years old", style: TextStyle(fontSize: 10, color: Colors.grey),),
                              Text("ORH+", style: TextStyle(fontSize: 10, color: Colors.grey),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ) : Container(),

                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: TabBar(
                            controller: _tabController,
                            labelColor: Colors.black,
                            indicatorColor: Colors.grey,
                            indicatorSize: TabBarIndicatorSize.tab,
                            tabs: [Tab(text: "Drugs",), Tab(text: "Laboratory exams",), Tab(text: "Laboratory images",)],
                          ), 
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 8),
                            child: TabBarView(
                              controller: _tabController,
                              children: [drugs(), laboratoryExams(), laboratoryImages()]
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 80),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: tabIndex == 0 ? "Drugs" : tabIndex == 1 ? "Lab Test" : "Lab images",
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
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

  Widget drugs(){
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MakePrescriptionPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Injection Terlyz 1", style: TextStyle(fontSize: 16),),
                            Text("1", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MakePrescriptionPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 16),),
                            Text("250", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MakePrescriptionPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("TABLET Cetrizin 150", style: TextStyle(fontSize: 16),),
                            Text("150", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MakePrescriptionPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("TABLET Cetrizin 25", style: TextStyle(fontSize: 16),),
                            Text("25", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget laboratoryExams(){
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PrescriptionsPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Injection Terlyz 1", style: TextStyle(fontSize: 16),),
                            Text("1", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PrescriptionsPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 16),),
                            Text("250", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PrescriptionsPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("TABLET Cetrizin 150", style: TextStyle(fontSize: 16),),
                            Text("150", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PrescriptionsPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("TABLET Cetrizin 25", style: TextStyle(fontSize: 16),),
                            Text("25", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget laboratoryImages(){
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PrescriptionsPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Injection Terlyz 1", style: TextStyle(fontSize: 16),),
                            Text("1", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PrescriptionsPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 16),),
                            Text("250", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PrescriptionsPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("TABLET Cetrizin 150", style: TextStyle(fontSize: 16),),
                            Text("150", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PrescriptionsPage())
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("TABLET Cetrizin 25", style: TextStyle(fontSize: 16),),
                            Text("25", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Image.asset("assets/icon/plus.png", width: 20)
                      ],
                    ),
                    Divider(thickness: 0.5, color: Colors.grey,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}