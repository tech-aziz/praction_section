import 'dart:convert';

import 'package:all_widgets/models/usersModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ShowUsersDetails extends StatefulWidget {
  const ShowUsersDetails({super.key});

  @override
  State<ShowUsersDetails> createState() => _ShowUsersDetailsState();
}

class _ShowUsersDetailsState extends State<ShowUsersDetails> {
  UsersDetailsModel? _usersDetails;

  String url =
      "https://5f383e6541c94900169bfd42.mockapi.io/api/v1/user_details";
  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  void getData() {
    getUsersDetails();
  }

  void getUsersDetails() async {
    final response = await http.get(Uri.parse(url));
    final data = UsersDetailsModel.fromJson(jsonDecode(response.body));
    _usersDetails = data;
    print(_usersDetails!.name.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Users Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text(_usersDetails!.name.toString()),
            ),
            Container(
              child: Image.asset(
                _usersDetails!.image.toString(),
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
