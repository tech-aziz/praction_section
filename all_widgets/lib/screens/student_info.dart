import 'package:all_widgets/models/student_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class StudentInfo extends StatefulWidget {
  const StudentInfo({super.key});

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  List<StudentModel?> studentList = [];

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  fetchData() {
    fetchStudentData();
  }
  
 //do same task but different function
//  Future<List<StudentModel?>> fetchStudentData()async{
//     var jsonData = await rootBundle.loadString('jsonfile/student.json');
//     var studentInfo = studentModelFromJson(jsonData).toList();
//     studentList.addAll(studentInfo);
//     return studentInfo;
//   }


 //do same task but different function
  fetchStudentData() async {
    final jsonStudentData =
        await rootBundle.loadString('jsonfile/student.json');
    var studentInfo = studentModelFromJson(jsonStudentData);
    studentList.addAll(studentInfo);
    
  }

  // Future<List<StudentModel?>> _loadAStudentAsset() async {
  //   final jsonStudentData =
  //       await rootBundle.loadString('jsonfile/student.json');
  //   final jsonStudentList = json.decode(jsonStudentData) as List<dynamic>;
  //   return jsonStudentList.map((e) => StudentModel.fromJson(e)).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: studentList.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: studentList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      child: Text(studentList[index]!.id!.toString()),
                    ),
                    title: Text(studentList[index]!.name!.toString()),
                    trailing: Text(studentList[index]!.score!.toString()),
                  );
                },
              ),
      ),




    );
  }
}
