import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 
const colorTop = const Color(0xFFBC4C4C4);
const colorBottom = const Color(0xFFB050505);

class AdCardWidget extends StatelessWidget {
  final String imagem;
  final String title;
  final String address; 
  final String price; 
  final VoidCallback onTap;
  const AdCardWidget({
    Key? key,
    required this.imagem,
    required this.title,
    required this.address,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Container(
              height: 167,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(imagem),
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
                                text: title,
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
                                text: address,
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
                            text: "R\$ ${price}",
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
      ),
    );
  }
}
