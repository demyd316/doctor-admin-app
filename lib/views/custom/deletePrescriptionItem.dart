import 'package:flutter/material.dart';
class DeletePrescriptionItem extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _DeletePrescriptionItemState createState() => _DeletePrescriptionItemState();
}

class _DeletePrescriptionItemState extends State<DeletePrescriptionItem> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Are you sure you want to delete this item?"),
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