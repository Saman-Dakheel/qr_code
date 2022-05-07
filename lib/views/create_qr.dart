import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateQr extends StatefulWidget {
  const CreateQr({Key? key}) : super(key: key);

  @override
  State<CreateQr> createState() => _CreateQrState();
}

class _CreateQrState extends State<CreateQr> {
  String qrstr = "add data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create QR",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BarcodeWidget(
            barcode: Barcode.qrCode(),
            data: qrstr,
            color: Colors.teal,
            width: 250,
            height: 250,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              onChanged: (newvalue) {
                setState(() {
                  qrstr = newvalue;
                });
              },
              decoration: const InputDecoration(
                hintText: "Enter Data here ",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
