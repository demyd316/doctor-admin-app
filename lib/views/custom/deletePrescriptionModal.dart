import 'package:flutter/material.dart';
class DeletePrescriptionModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _DeletePrescriptionModalState createState() => _DeletePrescriptionModalState();
}

class _DeletePrescriptionModalState extends State<DeletePrescriptionModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("If you delete this prescription you will not be able to get it back."),
      actions: <Widget>[
        FlatButton(
          child: Text("NO"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text("YES"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}