import 'package:flutter/material.dart';

Container Header(context, {String title, Function onTap}){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 110.0,
    padding: EdgeInsets.only(left: 8, right: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: onTap,
          child: Icon(Icons.arrow_back, color: Colors.white,),
        ),
        Text(title, style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),),
        Icon(Icons.arrow_back, color: Colors.transparent,)
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
  );
}