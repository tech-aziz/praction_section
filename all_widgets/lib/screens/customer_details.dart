import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CustomerDetails extends StatefulWidget {
  const CustomerDetails({super.key});

  @override
  State<CustomerDetails> createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async{
  var response =  http.get(Uri.parse('http://192.168.43.92:5000/profile/all2'));
  // var r = json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customers Information'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Text(""),
      ),
    );
  }
  
  
}
