import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:free_api_practice/controller/api/apinationalize.dart';

class Nationalize extends StatefulWidget {
  const Nationalize({super.key});

  @override
  State<Nationalize> createState() => _NationalizeState();
}

class _NationalizeState extends State<Nationalize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nationalize"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: ()async{
          var d =await Apinationalize.apinationalize();
          log("${d}");
        },
            child: Text("API call")),
      ),
    );
  }
}
