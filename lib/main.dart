import 'package:abedok_police_clearence_page/pages/address_page.dart';
import 'package:abedok_police_clearence_page/pages/dashboard_page.dart';
import 'package:abedok_police_clearence_page/pages/home_page.dart';
import 'package:abedok_police_clearence_page/pages/image_upload_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
