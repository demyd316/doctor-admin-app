import 'package:flutter/material.dart';

Padding customTextFormField(context, {Function onChanged, String label, TextEditingController controller}){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      onChanged: onChanged,
      controller: controller,
      style: TextStyle(
        fontFamily: 'Roboto Reqular',
        color: Color(0xFF686F7D),
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 16,
          color: Color(0xFF686F7D),
        )
      ),
    ),
  );
}