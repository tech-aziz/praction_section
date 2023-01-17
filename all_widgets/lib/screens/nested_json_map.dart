import 'package:all_widgets/main.dart';
import 'package:flutter/material.dart';

class NestedJson extends StatefulWidget {
  const NestedJson({super.key});

  @override
  State<NestedJson> createState() => _NestedJsonState();
}

class _NestedJsonState extends State<NestedJson> {
  var myMap = {
    "name": "azizul hakim",
    "age": 26,
    "city": "Dhaka",
    "address": [
      {"country": "Bangladesh", "city": "Dhaka"},
      {"country": "Chaina", "city": "Shanhai"}
    ]
  };

  // var addressValue = myMap["address"];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(myMap['address'][0]['country'].toString()),
          ],
        ),
      ),
    );
  }
}
