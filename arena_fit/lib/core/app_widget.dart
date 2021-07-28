import 'package:arena_fit/ad/ad_page.dart';
import 'package:arena_fit/confirmation/confirmation_page.dart';
import 'package:arena_fit/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Arena Fit",
      home: ConfirmationPage(),
    );
  }
}
