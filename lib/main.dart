import 'package:flutter/material.dart';
import 'package:whatsapp/utils/theme.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.darkTheme(),
      title: "WhatApp",
      home: const Home(),
    );
  }
}
