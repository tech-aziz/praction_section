import 'dart:convert';

List<StudentModel?> studentModelFromJson(String str) => json.decode(str) == null
    ? []
    : List<StudentModel?>.from(
        json.decode(str)!.map((x) => StudentModel.fromJson(x)));

String studentModelToJson(List<StudentModel?>? data) => json.encode(
    data == null ? [] : List<dynamic>.from(data.map((x) => x!.toJson())));

class StudentModel {
  StudentModel({
    required this.id,
    required this.name,
    required this.score,
  });

  String? id;
  String? name;
  int? score;

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        id: json["id"],
        name: json["name"],
        score: json["score"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "score": score,
      };
}
