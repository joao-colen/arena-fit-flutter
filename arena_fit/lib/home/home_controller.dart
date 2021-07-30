

import 'package:arena_fit/home/home_repository.dart';
import 'package:arena_fit/shared/models/ad_model.dart';
import 'package:arena_fit/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

import 'widgets/home_state.dart';


class HomeController {
final stateNotifier =  ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<AdModel>? ads;

  final repository = HomeRepository();

  void getUser() async{
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getAds() async{
    state = HomeState.loading;
    ads = await repository.getAds();
    state = HomeState.success;
  }
}