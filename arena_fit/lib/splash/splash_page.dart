
import 'package:arena_fit/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const color = const Color(0xFFB002050);

class SplashPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => HomePage())));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: color, 
          backgroundBlendMode: BlendMode.luminosity,
        ),
        child: Center(
          child: Text.rich(
            TextSpan(
              text: "Arena",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.white, fontSize: 20)
              ),
              children: [
                TextSpan(
                  text: "Fit" ,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color(0xFFB24AA53), fontWeight: FontWeight.bold)
                  )
                )
              ] 
            )
          ),
        ),
      )
    );
  }
}