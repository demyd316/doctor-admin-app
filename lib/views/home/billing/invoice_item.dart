import 'package:flutter/material.dart';

class InvoiceItem extends StatefulWidget {
  @override
  _InvoiceItemState createState() => _InvoiceItemState();
}

class _InvoiceItemState extends State<InvoiceItem> {

  int unitValue = 12;
  String isTax;

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
                  Text("Fuo", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
                  Icon(Icons.arrow_back, color: Colors.transparent,),
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
                              Text("Unit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        unitValue --;
                                      });
                                    },
                                    child: Icon(Icons.remove, color: Color(0xff2d79e6))
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(unitValue.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        unitValue ++;
                                      });
                                    },
                                    child: Icon(Icons.add, color: Color(0xff2d79e6))
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(thickness: 0.5, color: Colors.grey,)
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Price", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              Container(
                                width: MediaQuery.of(context).size.width*0.2,
                                height: 35.0,
                                alignment: Alignment.centerLeft,
                                child: TextFormField(
                                  initialValue: "\$16",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  )
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xd1e3eaf5),
                                  border:
                                    Border.all(width: 5.0, color: Color(0xd1e3eaf5),),
                                ),
                              ),
                            ],
                          ),
                          Divider(thickness: 0.5, color: Colors.grey,)
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Taxes", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Radio(
                                          value: "No",
                                          groupValue: isTax,
                                          onChanged: (value){
                                            setState(() {
                                              isTax = value;
                                            });
                                          },
                                        ),
                                        Text("No", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Radio(
                                          value: "Yes",
                                          groupValue: isTax,
                                          onChanged: (value){
                                            setState(() {
                                              isTax = value;
                                            });
                                          }
                                        ),
                                        Text("12%", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(thickness: 0.5, color: Colors.grey,)
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Total", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                  Text("Including taxes", style: TextStyle(fontSize: 14, color: Colors.grey),)
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Text("\$215", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                              ),
                            ],
                          ),
                          Divider(thickness: 0.5, color: Colors.grey,)
                        ],
                      ),

                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: (){
                            },
                            minWidth: MediaQuery.of(context).size.width*0.5,
                            color: Colors.red,
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            MaterialButton(
              onPressed: (){
                Navigator.pop(context);
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

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}