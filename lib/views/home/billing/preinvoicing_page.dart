import 'package:doctorgo_doctor/views/home/billing/add_discount.dart';
import 'package:doctorgo_doctor/views/home/billing/billing_page.dart';
import 'package:doctorgo_doctor/views/home/billing/invoice_item.dart';
import 'package:doctorgo_doctor/views/home/billing/payment_page.dart';
import 'package:doctorgo_doctor/views/home/new_appointments/add_new_appointment.dart';
import 'package:flutter/material.dart';

class PreInvoicingPage extends StatefulWidget {
  @override
  _PreInvoicingPageState createState() => _PreInvoicingPageState();
}

class _PreInvoicingPageState extends State<PreInvoicingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
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
                    child: Icon(Icons.arrow_back, color: Colors.white,),
                  ),
                  Text("Pre-invoicing", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => AddNewAppointment())
                      );
                    },
                    child: Text("Save", style: TextStyle(fontSize: 15, color: Colors.white),)
                  )
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

            Expanded(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Items", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                              Text("Quantity", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                              Text("Price", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),)
                            ],
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Expanded(
                                        child: Text("Body pack", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                      ),
                                      Expanded(
                                        child: Center(child: Text("1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),))
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("\$50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                            Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                                          ],
                                        ),
                                      )
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
                                MaterialPageRoute(builder: (_) => InvoiceItem()),
                              );
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Expanded(
                                        child: Text("Fuo", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                      ),
                                      Expanded(
                                        child: Center(child: Text("12", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),))
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("\$200", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                            Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Divider(thickness: 0.5, color: Colors.grey,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            Column(
              children: <Widget>[
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Pre-taxes value", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                Text("\$250", style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                          ],
                        ),

                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => AddDiscount())
                            );
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text("Add discount", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                          Text(" (10%)", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    ),
                                    Text("\$250", style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                Divider(
                                  thickness: 0.5,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),

                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Total", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                    Text("Including taxes", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                Text("\$225", style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BillingPage()),
                    );
                  },
                  minWidth: MediaQuery.of(context).size.width*0.7,
                  color: Color.fromRGBO(71, 144, 255, 1),
                  height: 45,
                  child: Text(
                    "Add item",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.5),
                  ),
                ),

                MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PaymentPage()),
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
                          "Generate and Collect",
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
              ],
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}