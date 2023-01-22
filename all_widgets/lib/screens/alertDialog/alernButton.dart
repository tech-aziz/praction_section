import 'package:all_widgets/screens/alertDialog/showDialog.dart';
import 'package:flutter/material.dart';

class AlertButton extends StatefulWidget {
  const AlertButton({super.key});

  @override
  State<AlertButton> createState() => _AlertButtonState();
}

class _AlertButtonState extends State<AlertButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Dialog')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
            child: Text('Show Dialog'),
            onPressed: () {
              showDialog(
                context: context, 
                builder: (context){
                  return AlertDialog(
                    title: Text('Title'),
                    content: Text('This is sub-title'),
                    actions: [
                      Text('OK'),
                      Text('NO')
                    ],
                  );
                });
            },
          )),
          
        ],
      ),
    );
  }
}
