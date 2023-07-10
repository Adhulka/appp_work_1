// To parse this JSON data, do
//
//     final cartproduct = cartproductFromJson(jsonString);

import 'dart:convert';

List<Cartproduct> cartproductFromJson(String str) => List<Cartproduct>.from(
    json.decode(str).map((x) => Cartproduct.fromJson(x)));

String cartproductToJson(List<Cartproduct> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cartproduct {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Cartproduct({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory Cartproduct.fromJson(Map<String, dynamic> json) => Cartproduct(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating?.toJson(),
      };
}

// enum Category { MEN_S_CLOTHING, JEWELERY, ELECTRONICS, WOMEN_S_CLOTHING }

// final categoryValues = EnumValues({
//     "electronics": Category.ELECTRONICS,
//     "jewelery": Category.JEWELERY,
//     "men's clothing": Category.MEN_S_CLOTHING,
//     "women's clothing": Category.WOMEN_S_CLOTHING
// });

class Rating {
  double? rate;
  int? count;

  Rating({
    this.rate,
    this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
