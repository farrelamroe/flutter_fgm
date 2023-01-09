import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Teater extends StatelessWidget {
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
      backgroundColor: Color(0xff202020),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/background_sinopsis1.png"),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(0).copyWith(top: 22),
                      padding: EdgeInsets.all(0).copyWith(
                        left: 27,
                        top: 11,
                      ),
                      width: 300,
                      height: 88,
                      color: Color(0xff171717),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/teater1.png", width: 101),
                          Text(
                            "18 November 2022 |\nTaman Budaya Yogyakarta",
                            style: GoogleFonts.montserrat(
                              color: Color(0xffF0F0F0),
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 29),
                    Text(
                      "Wirama Bhatara\nKertagama",
                      style: GoogleFonts.montserrat(
                        color: Color(0xffF0F0F0),
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset("assets/background_sinopsis.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 27.0, vertical: 34.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/sinopsis.png",
                        width: 200,
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        "Manusia adalah makhluk multidimensi. Sejahat-jahat manusia, masih memiliki kebaikan. Sebaik-baik manusia, masih ada sisi kejahatan.",
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF0F0F0),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Konsekuensi dari multidimensional adalah adanya perubahan watak dari seorang manusia. Sewaktu manusia dapat jahat ketika memiliki perasaan tamak. Sewaktu manusia dapat baik hingga mampu menebarkan perasaan damai dan kenyamanan.",
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF0F0F0),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Tamak, damai, dan kenyamanan merupakan emosi turunan dari enam (6) emosi dasar manusia.",
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF0F0F0),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 34,),
                      Image.asset("assets/assets_sinopsis.png", width: 132,)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
