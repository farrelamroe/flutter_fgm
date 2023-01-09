// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:flutter_fgm/pages/rangkaian_acara.dart';
import "package:google_fonts/google_fonts.dart";

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff171717),
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/logo.png",
                width: 30,
              ),
              Icon(Icons.account_balance_sharp),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 167,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/background.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Color(0xff1A1A1A),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0).copyWith(
                      top: 60,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/logo.png",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "FESTIVAL",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffF0F0F0),

                              ),
                            ),
                            SizedBox(width: 25),
                            Image.asset("assets/yellow_block.png"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "GADJAH MADA",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffF0F0F0),
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset("assets/red_block.png"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 65,
                            vertical: 10,
                          ),
                          child: Text(
                            textAlign: TextAlign.justify,
                            "Festival Gadjah Mada merupakan sebuah festival yang menyajikan kreasi budaya dan seni tradisional melalui pengemasan yang modern. Pada tahun ini, Festival Gadjah Mada akan menyemarakkan rangkaian acaranya melalui festival seni, pasar rakyat, dan pentas teater.",
                            style: TextStyle(
                              color: Color(0xffF0F0F0),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(-0.57,1),
                          width: double.infinity,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xffEEEEEE),
                              ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return RangkaianAcara();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "Selengkapnya",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff171717),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: -5,
                  top: 60,
                  child: Image.asset(
                    "assets/logo_black.png",
                    width: 200,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
