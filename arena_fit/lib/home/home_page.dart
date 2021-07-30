import 'package:arena_fit/ad/ad_page.dart';
import 'package:arena_fit/home/home_controller.dart';
import 'package:arena_fit/home/widgets/ad_card/ad_card_widget.dart';
import 'package:arena_fit/home/widgets/appbar/app_bar_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  
  @override
  _HomePageState createState() => _HomePageState();
}
const color = const Color(0xFFB002050);
@override
class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  
  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getAds();

    controller.stateNotifier.addListener(() { 
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if(controller.state == HomeState.success)  {
      return Scaffold(
      appBar: AppBarWidget(controller.user!),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: color, 
            backgroundBlendMode: BlendMode.luminosity,
          ),
          child: Column(
            children: controller.ads!.map((e) => AdCardWidget(
              title: e.title,
              imagem: e.imagem,
              price: e.price,
              address: e.address,
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => AdPage(
                      title: e.title,
                      imagem: e.imagem,
                      price: e.price,
                      address: e.address,
                      profile: e.profile,
                      description: e.description,
                      name: e.name
                  )));
              }
            )).toList() ,
          )
        ),
      ),
    );
    } else {
      return Scaffold(
        body: Center(child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
        ))
      );
    }
  }
}