import 'package:flutter/material.dart';
import 'package:doctorgo_doctor/views/home/billing/billing_page.dart';
class CancelInvoiceModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _CancelInvoiceModalState createState() => _CancelInvoiceModalState();
}

class _CancelInvoiceModalState extends State<CancelInvoiceModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Are you sure you want to cancel this invoice?"),
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => BillingPage())
            );
          },
        ),
      ],
    );
  }
}