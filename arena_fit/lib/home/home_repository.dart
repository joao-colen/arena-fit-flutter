import 'dart:convert';

import 'package:arena_fit/shared/models/ad_model.dart';
import 'package:arena_fit/shared/models/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async{
    final response = await rootBundle.loadString("assets/database/user.json");
    final user = UserModel.fromJson(response);
    return user;
  }
  Future<List<AdModel>> getAds() async{
    final response = await rootBundle.loadString("assets/database/ads.json");
    final list = jsonDecode(response) as List;
    final ads = list.map((e) => AdModel.fromMap(e)).toList();
    return ads;
  }
}