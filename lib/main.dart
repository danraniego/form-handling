import 'package:flutter/material.dart';
import 'package:form_handling/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Form Handling',
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home: const HomePage(),
  ));
}