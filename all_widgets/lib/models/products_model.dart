// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

List<ProductsModel?>? productsModelFromJson(String str) => json.decode(str) == null ? [] : List<ProductsModel?>.from(json.decode(str)!.map((x) => ProductsModel.fromJson(x)));

String productsModelToJson(List<ProductsModel?>? data) => json.encode(data == null ? [] : List<dynamic>.from(data.map((x) => x!.toJson())));

class ProductsModel {
    ProductsModel({
        required this.id,
        required this.name,
        required this.image,
        required this.price,
        required this.isSold,
    });

    String? id;
    String? name;
    String? image;
    int? price;
    bool? isSold;

    factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
        isSold: json["isSold"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "price": price,
        "isSold": isSold,
    };
}
