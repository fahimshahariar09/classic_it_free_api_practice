import 'package:flutter/material.dart';
import 'package:free_api_practice/screen/nationalize.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Nationalize(),
    );
  }
}
