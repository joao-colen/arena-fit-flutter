import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const color = const Color(0xFFB002050);

class ConfirmationPage extends StatelessWidget {
  final String time;
  const ConfirmationPage({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pop(context);
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              backgroundBlendMode: BlendMode.luminosity,
            ),
            child: Center(
              child: CircleAvatar(
                backgroundColor: Color(0xFFB24AA53),
                radius: 100,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 74.0,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Center(
                child: Text.rich(TextSpan(
                  text: "Reserva Confirmada!\n",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.white, fontSize: 30)),
                )),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Center(
                child: Text.rich(TextSpan(
                    text: time,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
