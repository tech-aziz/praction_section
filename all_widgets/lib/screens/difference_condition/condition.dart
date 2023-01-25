import 'dart:io';

import 'package:all_widgets/screens/alertDialog/showDialog.dart';
import 'package:flutter/material.dart';

class ConditionalLogic extends StatefulWidget {
  const ConditionalLogic({super.key});

  @override
  State<ConditionalLogic> createState() => _ConditionalLogicState();
}

class _ConditionalLogicState extends State<ConditionalLogic> {
  List<Map<String, dynamic>> myList = [
    {'name': 'aziz', 'roll': 12, 'isMarried': false},
    {'name': 'aziz', 'roll': 12, 'isMarried': false}
  ];

  int a = 10;
  void conditionalMethod() {
    if (a < 14 && a < 3) {
      myList.forEach((element) {
        print(element.toString());
      });
    } else {
      print('false');
    }
  }

  @override
  Widget build(BuildContext context) {
    // final snackBar = ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //   elevation: 6.0,
    //   backgroundColor: Colors.amber,
    //   behavior: SnackBarBehavior.floating,
    //   content: Text(
    //     "Snack bar test",
    //     style: TextStyle(color: Colors.white),
    //   ),
    // ));

    return Scaffold(
      appBar: AppBar(
        title: Text('Condition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      // duration: Duration(microseconds: 102),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.red, width: 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      action: SnackBarAction(
                        label: 'Ok',
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                      elevation: 20,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Theme.of(context).primaryColor,
                      content: Text('Successfully Showing SnackBar')));
                },
                child: Text('Snack Bar'))
          ],
        ),
      ),
    );
  }
}
