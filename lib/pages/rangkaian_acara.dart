import "package:flutter/material.dart";
import 'package:flutter_fgm/pages/pasar_rakyat.dart';
import 'package:flutter_fgm/pages/teater.dart';
import "package:google_fonts/google_fonts.dart";
import "package:flutter_fgm/widgets/cart.dart";
import "package:carousel_slider/carousel_slider.dart";

class RangkaianAcara extends StatelessWidget {
  List<String> data = ["TICKETING", "PRE ORDER", "ORDER"];
  List<String> foto = ["assets/logo.png"];
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
      backgroundColor: Color(0xff1A1A1A),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0).copyWith(
                  top: 20,
                  bottom: 20,
                ),
                child: Image.asset(
                  "assets/judul_acara.png",
                  width: 300,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Teater();
                      },
                    ),
                  );
                },
                child: Cart(
                  foto: "assets/teater.png",
                  judul: "TEATER",
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Cart(
                  foto: "assets/festival_seni.png",
                  judul: "FESTIVAL SENI",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PasarRakyat();
                      },
                    ),
                  );
                },
                child: Cart(
                  foto: "assets/pasar_rakyat.png",
                  judul: "PASAR RAKYAT",
                ),
              ),
              SizedBox(height: 70),
              Image.asset("assets/decoration.png"),
              SizedBox(height: 60),
              CarouselSlider(
                options: CarouselOptions(
                  height: 250.0,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.4,
                ),
                items: data.map(
                  (i) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xff202020),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$i',
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffF0F0F0),
                            ),
                          ),
                          SizedBox(height: 5),
                          Image.asset("assets/line.png"),
                          Spacer(),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "1 Januari 2023",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.pin_drop_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "kiostix.com",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ).toList(),
              ),
              const SizedBox(height: 100),
              Image.asset(
                "assets/sponsor.png",
                width: 300,
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 400,
                color: const Color(0xff242424),
                child: Image.asset("assets/logo.png"),
              ),
              const SizedBox(height: 60),
              Image.asset(
                "assets/medpart.png",
                width: 300,
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 1,
                color: const Color(0xff242424),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/Logo-ugm-vector2.png",
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
