// To parse this JSON data, do
//
//     final usersDetailsModel = usersDetailsModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UsersDetailsModel usersDetailsModelFromJson(String str) => UsersDetailsModel.fromJson(json.decode(str));

String usersDetailsModelToJson(UsersDetailsModel? data) => json.encode(data!.toJson());

class UsersDetailsModel {
    UsersDetailsModel({
        required this.name,
        required this.rating,
        required this.played,
        required this.won,
        required this.winningPercentage,
        required this.image,
    });

    String? name;
    int? rating;
    int? played;
    int? won;
    int? winningPercentage;
    String? image;

    factory UsersDetailsModel.fromJson(Map<String, dynamic> json) => UsersDetailsModel(
        name: json["name"],
        rating: json["rating"],
        played: json["played"],
        won: json["won"],
        winningPercentage: json["winning_percentage"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "rating": rating,
        "played": played,
        "won": won,
        "winning_percentage": winningPercentage,
        "image": image,
    };
}
