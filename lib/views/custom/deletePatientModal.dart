import 'package:flutter/material.dart';
class DeletePatientModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _DeletePatientModalState createState() => _DeletePatientModalState();
}

class _DeletePatientModalState extends State<DeletePatientModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Do you want to delete?"),
      actions: <Widget>[
        FlatButton(
          child: Text("YES"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text("NO"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}