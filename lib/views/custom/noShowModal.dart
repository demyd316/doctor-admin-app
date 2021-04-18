import 'package:flutter/material.dart';
class NoShowModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _NoShowModalState createState() => _NoShowModalState();
}

class _NoShowModalState extends State<NoShowModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("You can apply this option only when it is the actual date and time of medical care"),
      actions: <Widget>[
        FlatButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}