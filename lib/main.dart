import 'package:flutter/material.dart';
import 'package:lesson15/pages/new_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:NewPages() ,
    );
  }
}