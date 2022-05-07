import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ReadQr extends StatefulWidget {
  const ReadQr({Key? key}) : super(key: key);

  @override
  State<ReadQr> createState() => _ReadQrState();
}

class _ReadQrState extends State<ReadQr> {
  String qrstr = "let's scann it";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Scanning QR",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            qrstr,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 30,
            ),
          ),
          ElevatedButton(
            onPressed: scanQR,
            child: const Text("Scanner"),
          ),
          SizedBox(
            width: height,
          ),
        ],
      ),
    );
  }

  Future<void> scanQR() async {
    try {
      FlutterBarcodeScanner.scanBarcode("#2A99CF", "Cancel", true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrstr = value;
        });
      });
    } catch (e) {
      qrstr = "Unable to scan";
    }
  }
}
