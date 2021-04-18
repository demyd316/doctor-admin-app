import 'package:flutter/material.dart';
class IssuingInvoiceModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _IssuingInvoiceModalState createState() => _IssuingInvoiceModalState();
}

class _IssuingInvoiceModalState extends State<IssuingInvoiceModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Are you sure to generate and sign the invoice electronically?"),
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