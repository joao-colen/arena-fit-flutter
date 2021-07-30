import 'package:arena_fit/shared/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget(
    this.user,
  ) : super(
        preferredSize: Size.fromHeight(120),
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row (
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 58,
                                  height: 58,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage(user.photoUrl),
                                      fit: BoxFit.fill
                                    )
                                  )  
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text.rich(
                                    TextSpan(
                                      text: "Oi, ",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(color: Colors.white, fontSize: 20)
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "${user.name}!" ,
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                          )
                                        )
                                      ] 
                                    )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text.rich(
                              TextSpan(
                                text: user.address,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(color: Colors.white, decoration: TextDecoration.underline, fontSize: 14)
                                )
                              )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ),
            ],
          ),
        )
      );
  
}
