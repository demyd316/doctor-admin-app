import 'dart:io';

import 'package:doctorgo_doctor/views/custom_widgets/header.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewPublicationPage extends StatefulWidget {
  @override
  _NewPublicationPageState createState() => _NewPublicationPageState();
}

class _NewPublicationPageState extends State<NewPublicationPage> {

  File _image;

  Future selectImage() async {
    await ImagePicker.pickImage(source: ImageSource.gallery).then((image) {
      setState(() {
        _image = image;
      });
    });
  }

  Future captureImage() async {
    await ImagePicker.pickImage(source: ImageSource.camera).then((image) {
      setState(() {
        _image = image;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(234, 239, 248, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Header(
              context,
              title: "New Publication",
              onTap: (){
                Navigator.pop(context);
              }
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset("assets/images/profile3.png", width: 50,),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("John Smith"),
                            Text("Doctor of Medicine", style: TextStyle(fontSize: 12, color: Colors.grey),),
                            Text("Neurosurgeon", style: TextStyle(fontSize: 12, color: Colors.grey),),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Expanded(
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return bottomSheet();
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )
                              );
                            },
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              color: Colors.grey,
                              dashPattern: [8, 4],
                              strokeWidth: 1,
                              radius: Radius.circular(10),
                              child: Container(
                                height: 150,
                                padding: EdgeInsets.symmetric(vertical: 35),
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset("assets/icon/add_folder.png")
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 50,
                      child: TextFormField(
                        validator: (_input){
                          if(_input.length == 0){
                            return "Please enter a message";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Write Something...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w700,),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          filled: true,
                        ),  
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(top: BorderSide(width: 0.5, color: Colors.grey))
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomSheet(){
    return Container(
      height: 250,
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Expanded(
            child: MaterialButton(
              onPressed: (){
                selectImage();
              },
              child: Row(
                children: <Widget>[
                  Image.asset("assets/icon/photo.png", width: 25,),
                  SizedBox(width: 20),
                  Text("Add a photo"),
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: (){
                captureImage();
              },
              child: Row(
                children: <Widget>[
                  Image.asset("assets/icon/camera.png", width: 25),
                  SizedBox(width: 20),
                  Text("Take a picture"),
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: (){

              },
              child: Row(
                children: <Widget>[
                  Image.asset("assets/icon/video.png", width: 25),
                  SizedBox(width: 20),
                  Text("Record a video"),
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: (){

              },
              child: Row(
                children: <Widget>[
                  Image.asset("assets/icon/pdf.png", width: 25),
                  SizedBox(width: 20),
                  Text("Add a document"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}