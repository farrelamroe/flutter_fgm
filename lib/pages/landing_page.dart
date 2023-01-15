// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:flutter_fgm/pages/rangkaian_acara.dart';
import "package:google_fonts/google_fonts.dart";
import "package:flutter_fgm/widgets/pasar.dart";

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
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
      backgroundColor: Color(0xff171717),
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
                  height: MediaQuery.of(context).size.height * 1,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 65.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 65.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 65,
                          ),
                          alignment: Alignment.topLeft,
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Image.asset("assets/decorplus.png"),
                  SizedBox(
                    height: 50,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                selectedIndex = 0;
                              },
                            );
                          },
                          child: Text(
                            "TEMA BESAR",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 20,
                              fontWeight: selectedIndex == 0
                                  ? FontWeight.w700
                                  : FontWeight.w500,
                              color: Color(0xffF0F0F0),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          color: Color(0xffF0F0F0),
                          thickness: 5,
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                          child: Text(
                            "TAGLINE",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 20,
                              fontWeight: selectedIndex == 1
                                  ? FontWeight.w700
                                  : FontWeight.w500,
                              color: Color(0xffF0F0F0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    height: 500,
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            selectedIndex = 0;
                          },
                        );
                      },
                      child: selectedIndex == 0
                          ? Image.asset("assets/tema_besar.png")
                          : Center(
                              child: Text(
                                "CIPTA MANGUN KARYA LAHIRKAN HARMONI KERAGAMAN BANGSA",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 36,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xffF0F0F0),
                                ),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Image.asset("assets/decor.png"),
            SizedBox(
              height: 22,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 44,
                vertical: 32,
              ),
              width: MediaQuery.of(context).size.height * 1,
              height: MediaQuery.of(context).size.height * 1,
              color: Color(0xff242424),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "MASKOT KITA",
                      style: GoogleFonts.montserrat(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffF0F0F0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Image.asset("assets/cindaru.png"),
                  Divider(
                    color: Color(0xffF0F0F0),
                    thickness: 5,
                    height: 50,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Gabungan kata dari\n",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF0F0F0),
                          ),
                        ),
                        TextSpan(
                          text: "Cindaku",
                          style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffF0F0F0),
                              backgroundColor: Color(0xffE62C20)),
                        ),
                        TextSpan(
                          text: " dan ",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF0F0F0),
                          ),
                        ),
                        TextSpan(
                          text: "Aru.",
                          style: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffF0F0F0),
                              backgroundColor: Color(0xff4A8068)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Cindaku ",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF0F0F0),
                          ),
                        ),
                        TextSpan(
                          text: "merupakan makhluk mitologi berupa",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF0F0F0),
                          ),
                        ),
                        TextSpan(
                          text: " manusia harimau. Aru ",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF0F0F0),
                          ),
                        ),
                        TextSpan(
                          text: "merupakan",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF0F0F0),
                          ),
                        ),
                        TextSpan(
                          text: " gelar bangsawan ",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF0F0F0),
                          ),
                        ),
                        TextSpan(
                          text: "dalam suku bugis",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF0F0F0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 2,
                padding: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 32,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff171717),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/maskot.png",
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(
                        horizontal: 34,
                      ),
                      width: double.infinity,
                      height: 35,
                      color: Color(0xff242424),
                      child: Text(
                        "HARAPAN",
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffF0F0F0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 34.0, vertical: 24),
                      child: RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  "Melalui sosok Cindaru, Festival Gadjah Mada 2022 diharapkan dapat menjadi ",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                color: Color(0xffF0F0F0),
                              ),
                            ),
                            TextSpan(
                              text: "simbol kebijaksanaan ",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffF0F0F0),
                              ),
                            ),
                            TextSpan(
                              text: "dan ",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                color: Color(0xffF0F0F0),
                              ),
                            ),
                            TextSpan(
                              text: "kekuatan ",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffF0F0F0),
                              ),
                            ),
                            TextSpan(
                              text: "masyarakat dalam mempertahankan ",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                color: Color(0xffF0F0F0),
                              ),
                            ),
                            TextSpan(
                              text: "keselarasan ",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffF0F0F0),
                              ),
                            ),
                            TextSpan(
                              text: "dalam kediversitasan budaya di Nusantara ",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                color: Color(0xffF0F0F0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset("assets/kembang1.png"),
          ],
        ),
      ),
    );
  }
}
