import 'package:doctorgo_doctor/views/home/billing/preinvoicing_page.dart';
import 'package:flutter/material.dart';

class AddDiscount extends StatefulWidget {
  @override
  _AddDiscountState createState() => _AddDiscountState();
}

class _AddDiscountState extends State<AddDiscount> {
  
  String discountType;

  @override
  void initState() {
    discountType = "amount";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text("Add", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
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

            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Enter the discount type", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Divider(thickness: 0.5, color: Colors.grey,),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: "amount",
                          groupValue: discountType,
                          onChanged: (value){
                            setState(() {
                              discountType = value;
                            });
                          },
                          activeColor: Color.fromRGBO(251, 119, 43, 1),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 30),
                          child: Text("\$", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          height: 35.0,
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
                            color: Color(0xd1e3eaf5),
                            border:
                              Border.all(width: 5.0, color: Color(0xd1e3eaf5),),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Radio(
                          value: "percent",
                          groupValue: discountType,
                          onChanged: (value){
                            setState(() {
                              discountType = value;
                            });
                          },
                          activeColor: Color.fromRGBO(251, 119, 43, 1),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 30),
                          child: Text("%", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          height: 35.0,
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
                            color: Color(0xd1e3eaf5),
                            border:
                              Border.all(width: 5.0, color: Color(0xd1e3eaf5),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
              ],
            ),

            SizedBox(height: 30)
          ]
        ),
      ),
    );
  }
}