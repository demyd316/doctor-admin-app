import 'package:doctorgo_doctor/views/home/billing/invoice_details_page.dart';
import 'package:doctorgo_doctor/views/custom_widgets/header.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  String editAmount;
  String paymentMode;

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
            Header(
              context,
              title: "Payment",
              onTap: (){
                Navigator.pop(context);
              }
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Number Invoice", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            TextFormField(),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Date", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            TextFormField(),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Invoice amount", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            TextFormField(),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Edit amount", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Radio(
                                        value: "Yes",
                                        groupValue: editAmount,
                                        onChanged: (value){
                                          setState(() {
                                            editAmount = value;
                                          });
                                        },
                                        activeColor: Color.fromRGBO(251, 119, 43, 1),
                                      ),
                                      Text("Yes", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),

                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Radio(
                                        value: "No",
                                        groupValue: editAmount,
                                        onChanged: (value){
                                          setState(() {
                                            editAmount = value;
                                          });
                                        },
                                        activeColor: Color.fromRGBO(251, 119, 43, 1),
                                      ),
                                      Text("No", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(4.0),
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

                      MaterialButton(
                        onPressed: (){
                        },
                        minWidth: MediaQuery.of(context).size.width*0.7,
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

                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Credit Added", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            TextFormField(),
                          ],
                        ),
                      ),

                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.9,
                        margin: EdgeInsets.only(top: 10, bottom: 15),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: paymentMode,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            onChanged: (String value){
                              setState(() {
                                paymentMode = value;
                              });
                            },
                            items: <String>["Cash", "Debit/Credit"]
                              .map<DropdownMenuItem<String>>((String value){
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(228, 235, 245, 1),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),



                      MaterialButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) =>InvoiceDetailsPage())
                          );
                        },
                        minWidth: MediaQuery.of(context).size.width*0.7,
                        color: Color.fromRGBO(71, 144, 255, 1),
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


                    ],
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}