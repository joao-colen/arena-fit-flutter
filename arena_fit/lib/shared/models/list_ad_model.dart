import 'dart:convert';

import 'package:arena_fit/shared/models/ad_model.dart';

class ListAdModel {
  final List<AdModel> ads;

  ListAdModel({required this.ads});

  Map<String, dynamic> toMap() {
    return {
      'ads': ads.map((x) => x.toMap()).toList(),
    };
  }

  factory ListAdModel.fromMap(Map<String, dynamic> map) {
    return ListAdModel(
      ads: List<AdModel>.from(map['ads']?.map((x) => AdModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ListAdModel.fromJson(String source) => ListAdModel.fromMap(json.decode(source));
}
