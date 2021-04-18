import 'package:doctorgo_doctor/views/custom/issuingInvoiceModal.dart';
import 'package:doctorgo_doctor/views/home/billing/payment_page.dart';
import 'package:doctorgo_doctor/views/home/billing/cancel_invoice_modal.dart';
import 'package:flutter/material.dart';

class InvoiceDetailsPage extends StatefulWidget {
  @override
  _InvoiceDetailsPageState createState() => _InvoiceDetailsPageState();
}

class _InvoiceDetailsPageState extends State<InvoiceDetailsPage> {

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
              padding: EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white,),
                  ),
                  Text("Invoice details", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
                  PopupMenuButton(
                    onSelected: (selected){
                      print(selected);
                      switch (selected) {
                        case 3:
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => CancelInvoiceModal(),
                          );
                          break;
                        case 4:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => PaymentPage()),
                          );
                          break;
                        default:
                      }
                    },
                    itemBuilder: (context) {
                      var list = List<PopupMenuEntry<Object>>();
                      list.add(
                        PopupMenuItem(
                          child: Text("Share", style: TextStyle(fontWeight: FontWeight.w600)),
                          value: 0,
                        ),
                      );

                      list.add(
                        PopupMenuItem(
                          child: Text("Print", style: TextStyle(fontWeight: FontWeight.w600)),
                          value: 1,
                        ),
                      );

                      list.add(
                        PopupMenuItem(
                          child: Text("Delete", style: TextStyle(fontWeight: FontWeight.w600,),),
                          value: 2,
                        ),
                      );

                      list.add(
                        PopupMenuItem(
                          child: Text("Cancel", style: TextStyle(fontWeight: FontWeight.w600,),),
                          value: 3,
                        ),
                      );

                      list.add(
                        PopupMenuItem(
                          child: Text("Edit", style: TextStyle(fontWeight: FontWeight.w600,),),
                          value: 4,
                        ),
                      );
                      return list;
                    },
                    icon: Icon(Icons.more_vert, color: Colors.white,),
                  ),
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

            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Card(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                child: Image.asset("assets/icon/Rectangle.png", height: 70, width: 70, fit: BoxFit.cover,),
                                borderRadius: BorderRadius.circular(35),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("JOHNSON SMITH", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                    SizedBox(height: 10),
                                    Text("#1546897562", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Card(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Number Invoice", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("23432", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  Divider(thickness: 0.5, color: Colors.grey,),
                                ],
                              ),

                              Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Date", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("23/06/2020", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  Divider(thickness: 0.5, color: Colors.grey,),
                                ],
                              ),

                              Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Items", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("Quantity", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("Price", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Expanded(
                                        child: Text("Body Pack", style: TextStyle(fontWeight: FontWeight.bold),)
                                      ),
                                      Expanded(
                                        child: Center(child: Text("1", style: TextStyle(fontWeight: FontWeight.bold),))
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("\$50", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Expanded(
                                        child: Text("Fuo", style: TextStyle(fontWeight: FontWeight.bold),)
                                      ),
                                      Expanded(
                                        child: Center(child: Text("12", style: TextStyle(fontWeight: FontWeight.bold),))
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("\$200", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Divider(thickness: 0.5, color: Colors.grey,),
                                ],
                              ),

                              Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Amount", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("\$250", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Tax", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("\$30", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Credit added", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("\$25", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Discount", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("\$25", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  Divider(thickness: 0.5, color: Colors.grey,),
                                ],
                              ),

                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(),
                                  ),

                                  Expanded(
                                    child: Center(child: Text("Total", style: TextStyle(fontWeight: FontWeight.bold),),),
                                  ),

                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          "\$280",
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Payment details", style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 10),
                            Text("Debit/Credit card", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                            Text("23/06/2020", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            MaterialButton(
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context) => IssuingInvoiceModal(),
                );
              },
              minWidth: MediaQuery.of(context).size.width*0.7,
              color: Color.fromRGBO(71, 144, 255, 1),
              height: 45,
              child: Text(
                "Issuing an electronic invoice",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.5),
              ),
            ),

            SizedBox(height: 20,),
          ]
        ),
      ),
    );
  }
}