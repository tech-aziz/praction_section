import 'package:flutter/material.dart';

class Screen_Orientation extends StatefulWidget {
  const Screen_Orientation({super.key});

  @override
  State<Screen_Orientation> createState() => _Screen_OrientationState();
}

class _Screen_OrientationState extends State<Screen_Orientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Orientation'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Create a grid with 2 columns in portrait mode, or 3 columns in
            // landscape mode.
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline6,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}

Widget portraitDesign() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 100,
        width: 100,
        decoration:
            BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.red, width: 2)),
        child: Text('One'),
      ),
      Container(
        height: 100,
        width: 100,
        decoration:
            BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.green, width: 2)),
        child: Text('Two'),
      )
    ],
  );
}
