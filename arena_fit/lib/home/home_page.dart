import 'package:arena_fit/home/widgets/ad_card/ad_card_widget.dart';
import 'package:arena_fit/home/widgets/appbar/app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  
  @override
  _HomePageState createState() => _HomePageState();
}
const color = const Color(0xFFB002050);
@override
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: color, 
            backgroundBlendMode: BlendMode.luminosity,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 22,
              ),
              AdCardWidget(),
              SizedBox(
                height: 20,
              ),
              AdCardWidget(),
              SizedBox(
                height: 20,
              ),
              AdCardWidget()
            ],
          )
        ),
      ),
    );
  }
}