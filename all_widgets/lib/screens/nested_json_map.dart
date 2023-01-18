import 'dart:developer';

import 'package:all_widgets/main.dart';
import 'package:flutter/material.dart';

class NestedJson extends StatefulWidget {
  const NestedJson({super.key});

  @override
  State<NestedJson> createState() => _NestedJsonState();
}

class _NestedJsonState extends State<NestedJson>
    with SingleTickerProviderStateMixin {
  Map<String, dynamic> myMap = {
    "name": "azizul hakim",
    "age": 26,
    "city": "Dhaka",
    "address": [
      {"country": "Bangladesh", "city": "Dhaka"},
      {"country": "Chaina", "city": "Shanhai"}
    ]
  };

  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  // var addressValue = myMap["address"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.person),
              text: 'Person',
            ),
            Tab(
              icon: Icon(Icons.share),
              text: 'Share',
            ),
            Tab(
              icon: Icon(Icons.location_city),
              text: 'Location',
            ),
            Tab(
              icon: Icon(Icons.heart_broken),
              text: 'Love',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
              child: Column(
            children: [
              // Text(myMap['address'].toString()),
              Text(myMap.length.toString()),
              Text(myMap['name'].toString()),
              Text(myMap['address'].toString()),
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue, width: 1)),
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: true,
                  itemCount: myMap['address'].length,
                  // itemCount: myMap['address'].length,
                  itemBuilder: ((context, index) {
                    // return Text(myMap['address'][index]['country']);
                    return Center(child: Text(myMap['address'][index]['city']));
                  }),
                ),
              ),
            ],
          )),
          Center(child: Text('Share')),
          Center(child: Text('Location')),
          Center(child: Text('Love'))
        ],
      ),
    );
  }
}
