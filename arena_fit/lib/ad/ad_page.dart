import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdPage extends StatefulWidget {
  const AdPage({ Key? key }) : super(key: key);

  @override
  _AdPageState createState() => _AdPageState();
}

const color = const Color(0xFFB002050);
const colorTop = const Color(0xFFBC4C4C4);
const colorBottom = const Color(0xFFB050505);


  

class _AdPageState extends State<AdPage> {
  TimeOfDay _time = TimeOfDay.now();

   void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
      initialEntryMode: TimePickerEntryMode.input,
    );
    
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 287,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/images/futevolei.jpg'),
                    fit: BoxFit.fill
                  ),
                ),
              ),
              Container(
                height: 287,
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
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 13, bottom: 11),
                              child: Text.rich(
                                TextSpan(
                                  text: "Aula de Futevolei",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(color: Colors.white, fontSize: 26)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ), 
        preferredSize: Size.fromHeight(287)),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: color, 
              backgroundBlendMode: BlendMode.luminosity,
            ),
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 108,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Text.rich(
                                        TextSpan(
                                          text: "Aula Futevolei",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(color: Colors.white, fontSize: 25)
                                          )
                                        )
                                      ),
                                    ),
                                    
                                    Container(
                                      child: Text.rich(
                                        TextSpan(
                                          text: "Av. Cristal, 58, Eldorado",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(color: Colors.white, fontSize: 12)
                                          )
                                        )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 90),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/profile.jpg'),
                                          fit: BoxFit.fill
                                        )
                                      )  
                                    ),
                                  ),
                                  Container(
                                    child: Text.rich(
                                      TextSpan(
                                        text: "R\$ 21,99",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(color: Colors.white, fontSize: 18)
                                        )
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 154,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Container(
                                      child: Text.rich(
                                        TextSpan(
                                          text: "Descrição",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(color: Colors.white, fontSize: 20)
                                          )
                                        )
                                      ),
                                    ),
                                    Container(
                                      width: 324,
                                      child: Text.rich(
                                        TextSpan(
                                          text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(color: Colors.white, fontSize: 12)
                                          )
                                        )
                                      ),
                                    ),
                                  ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 118,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Container(
                                  child: Text.rich(
                                    TextSpan(
                                      text: "Horário da aula",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(color: Colors.white, fontSize: 20)
                                      )
                                    )
                                  ),
                                ),
                                Container(
                                  child:  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 155,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all(Color(0xFFB24AA53)),
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                                ),
                                                onPressed: _selectTime,
                                                child: Text('Escolha seu horário',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14
                                                )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 155,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all(Color(0xFFB24AA53)),
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                                ),
                                                onPressed: (){},
                                                child: Text('Reservar Horário',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14
                                                )),
                                              ),  
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}