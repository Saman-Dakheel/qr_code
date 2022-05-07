import 'package:flutter/material.dart';
import 'package:qr_code/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const Home(),
    );
  }
}
