import 'package:flutter/material.dart';
class RawProductsDetails extends StatefulWidget {
  const RawProductsDetails({super.key});

  @override
  State<RawProductsDetails> createState() => _RawProductsDetailsState();
}

class _RawProductsDetailsState extends State<RawProductsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raw Products Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
      child: Column(
        children: [
            
        ],
      ),),
    );
  }
}