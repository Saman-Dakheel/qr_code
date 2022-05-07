import 'package:flutter/material.dart';
import 'package:qr_code/views/create_qr.dart';
import 'package:qr_code/views/read_qr.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "QR Code",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              child: const Text(
                "Create QR code ",
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return CreateQr();
                  }),
                );
                print("Create QR code");
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              child: const Text(
                "Read QR code ",
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return ReadQr();
                  }),
                );
                print("Read QR code");
              },
            ),
          ],
        ),
      ),
    );
  }
}
