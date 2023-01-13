import 'package:all_widgets/models/product.dart';
import 'package:all_widgets/models/student_mode.dart';
import 'package:all_widgets/screens/student_info.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class WidgetPractice extends StatefulWidget {
  const WidgetPractice({super.key});

  @override
  State<WidgetPractice> createState() => _WidgetPracticeState();
}

class _WidgetPracticeState extends State<WidgetPractice> {
  List<Product> productList = [
    Product(
        id: 01,
        productName: 'Onion',
        image: "assets/images/app_icon.png",
        price: 13),
    Product(
        id: 02,
        productName: 'Garlic',
        image: "assets/images/food.png",
        price: 12),
    Product(
        id: 03,
        productName: 'Bell Pepper',
        image: "assets/images/food.png",
        price: 14),
    Product(
        id: 04,
        productName: 'Corn',
        image: "assets/images/food.png",
        price: 15),
    Product(
        id: 05,
        productName: 'Tomato',
        image: "assets/images/food.png",
        price: 16),
    Product(
        id: 06,
        productName: 'Mushrooms',
        image: "assets/images/food.png",
        price: 17),
  ];

  // Future<List<Student>> _loadAStudentAsset() async {
  //   final jsonStudentData =
  //       await rootBundle.loadString('jsonfile/student.json');

  //   final jsonStudentList = json.decode(jsonStudentData) as List<dynamic>;
  //   return jsonStudentList.map((e) => Student.fromJson(e)).toList();
  // }

  // JSON object
  // Map data = {
  //   "name": "John",
  //   "age": 22,
  //   "hobby": {"reading": true, "gaming": false, "sport": "football"},
  //   "class": ["JavaScript", "HTML", "CSS"],
  // };

  // var jsonData = '{ "name": "John", "age": 22 }';

  // var myMap = {
  //   'name': 'aziz',
  //   'majors': ['CS', 'Math'],
  //   'subject': [
  //     {
  //       'subjectName': 'Discreate Math',
  //       'teacherName': 'Mr.Jamal',
  //     },
  //     {
  //       'subjectName': 'Java Programming',
  //       'teacherName': 'Mr.Jamal',
  //     }
  //   ]
  // };

  @override
  Widget build(BuildContext context) {
    // print(data['class'][2]);
    // print(data['hobby']['sport']);
    // print(data['class']);
    // accessing JSON object
    // HTML

    return Scaffold(
        appBar: AppBar(
          title: Text('Widget'),
          centerTitle: true,
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.more_vert)],
        ),
        // body: FutureBuilder(
        //   future: _loadAStudentAsset(),
        //   builder: (context, AsyncSnapshot<List<Student>> snapshot) {
        //     final value = snapshot.data as List<Student>;
        //     return ListView.builder(
        //       itemCount: value.length,
        //       itemBuilder: (context, index) {
        //         return ListTile(
        //           leading: CircleAvatar(
        //             radius: 20,
        //             child: Text(value[index].studentName.toString()),
        //           ),
        //           // title: Text(value[index].studentName.toString()),
        //           // trailing: Text(value[index].studentScores.toString()),
        //         );
        //       },
        //     );
        //   },
        // )

        body: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    separatorBuilder: (context, index) {
                      return Divider(
                        indent: 12,
                        endIndent: 12,
                        thickness: 1,
                        color: Colors.black12,
                      );
                    },
                    itemBuilder: ((context, index) {
                      return Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 1)),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                      productList[index].image.toString()),
                                )),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        productList[index]
                                            .productName
                                            .toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(productList[index].price.toString()),
                                    ]),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
                    itemCount: productList.length),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => StudentInfo()));
                    },
                    child: Text('Next Page'))
              ],
            ),
          ),
        ));
  }
}
