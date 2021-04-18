import 'package:doctorgo_doctor/views/custom/deletePatientModal.dart';
import 'package:doctorgo_doctor/views/home/billing/add_new_item.dart';
import 'package:doctorgo_doctor/views/home/billing/invoice_item.dart';
import 'package:doctorgo_doctor/views/home/billing/preinvoicing_page.dart';
import 'package:doctorgo_doctor/views/home/clinic_history.dart';
import 'package:doctorgo_doctor/views/tabs/patientsPage.dart';
import 'package:flutter/material.dart';

class BillingPage extends StatefulWidget {

  final bool fromBook;
  BillingPage({@required this.fromBook});

  @override
  _BillingPageState createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {

  int bodyPackAmount = 0;
  int fuoAmount = 0;
  bool patientSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
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
                    child: Icon(Icons.arrow_back, color: Colors.white,),
                  ),
                  Text("Adding items to the invoice", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
                  Container(),
                  // GestureDetector(
                  //   onTap: (){
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (_) => AddNewAppointment())
                  //     );
                  //   },
                  //   child: Text("Save", style: TextStyle(fontSize: 15, color: Colors.white),)
                  // )
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

            SizedBox(height: 5,),

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

            widget.fromBook == false || widget.fromBook ==  null ? Visibility(
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

            SizedBox(height: 5,),

            Expanded(
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(8),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => InvoiceItem()),
                                );
                              },
                              child: Container(
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Body Pack", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                    Row(
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              if(bodyPackAmount > 0){
                                                bodyPackAmount --;
                                              }
                                            });
                                          },
                                          child: Icon(Icons.remove, color: Color(0xff2d79e6))
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: Text(bodyPackAmount.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              bodyPackAmount ++;
                                            });
                                          },
                                          child: Icon(Icons.add, color: Color(0xff2d79e6),)
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(thickness: 0.5, color: Colors.grey,)
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => InvoiceItem()),
                                );
                              },
                              child: Container(
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Fuo", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                    Row(
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: (){
                                            if(fuoAmount > 0) {
                                              setState(() {
                                                fuoAmount --;
                                              });
                                            }
                                          },
                                          child: Icon(Icons.remove, color: Color(0xff2d79e6))
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: Text(fuoAmount.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              fuoAmount ++;
                                            });
                                          },
                                          child: Icon(Icons.add, color: Color(0xff2d79e6),)
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(thickness: 0.5, color: Colors.grey,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),

            SizedBox(height: 10),

            MaterialButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PreInvoicingPage()),
                );
              },
              minWidth: MediaQuery.of(context).size.width*0.7,
              color: Color.fromRGBO(71, 144, 255, 1),
              height: 45,
              child: Container(
                width: MediaQuery.of(context).size.width*0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.keyboard_arrow_right, color: Colors.transparent,),
                    Text(
                      (bodyPackAmount + fuoAmount).toString() + " selected item = \$" + ((bodyPackAmount + fuoAmount) * 50).toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right, color: Colors.white,),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.5),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 70),
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => AddNewItem()),
            );
          },
          child: Image.asset("assets/icon/green_add.png", width: 60)
        )
      ),
    );
  }
}