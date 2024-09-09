import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
 
  @override
  State<MyApp> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyApp> {
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Login",
      home: Login()
    );
  }
}