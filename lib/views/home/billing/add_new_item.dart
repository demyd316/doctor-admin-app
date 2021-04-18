import 'package:doctorgo_doctor/views/custom_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddNewItem extends StatefulWidget {
  @override
  _AddNewItemState createState() => _AddNewItemState();
}

class _AddNewItemState extends State<AddNewItem> {
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
                  Text("Add", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
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
              height: 15
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    customTextFormField(
                      context,
                      onChanged: (value){

                      },
                      label: "Item name"
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: customTextFormField(
                        context,
                        onChanged: (value){

                        },
                        label: "Cost"
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: customTextFormField(
                        context,
                        onChanged: (value){

                        },
                        label: "Taxes"
                      ),
                    ),
                  ],
                ),
              ),
            ),

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
          ]
        ),
      ),
    );
  }
}