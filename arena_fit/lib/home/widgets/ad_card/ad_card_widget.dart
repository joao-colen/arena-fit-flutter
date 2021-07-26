import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
  
const colorTop = const Color(0xFFBC4C4C4);
const colorBottom = const Color(0xFFB050505);

class AdCardWidget extends StatelessWidget {
  const AdCardWidget({ Key? key }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            height: 167,
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage('assets/images/futevolei.jpg'),
                fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(15)
            ),
          ),
          Container(
            height: 167,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  colorTop.withOpacity(0.0),
                  colorBottom,
                ],
                stops: [
                  0.55,
                  1.7
                ]
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text.rich(
                            TextSpan(
                              text: "Aula de Futevolei",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(color: Colors.white, fontSize: 18)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 15),
                          child: Text.rich(
                            TextSpan(
                              text: "Avenida Cristal, 58, Eldorado",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(color: Colors.white, fontSize: 12)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "R\$ 21,99",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white, fontSize: 22)
                          )
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}