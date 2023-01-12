class Student {
  String? studentId;
  String? studentName;
  int? studentScores;

  Student({this.studentId, this.studentName, this.studentScores});

  // Student.fromJson(Map<String, dynamic> parsedJson) {

  //   parsedJson['id'];
  //   parsedJson['name'];
  //   parsedJson['score'];

  // }

  factory Student.fromJson(Map<String, dynamic> parsedJson) {
    return Student(
        studentId: parsedJson['id'],
        studentName: parsedJson['name'],
        studentScores: parsedJson['score']);
  }
}
