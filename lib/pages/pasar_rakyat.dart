import 'dart:ffi';

import "package:flutter/material.dart";
import 'package:flutter_fgm/widgets/pasar.dart';
import "package:google_fonts/google_fonts.dart";

class PasarRakyat extends StatelessWidget {
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
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 600,
              padding: EdgeInsets.all(38).copyWith(bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/kembang.png",
                    width: 204,
                  ),
                  Image.asset(
                    "assets/judulpsrhp.png",
                    width: 204,
                  ),
                  Text(
                    "26 November 2022 |\nLapangan Pancasila UGM",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Color(0xffF0F0F0),
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    "Pasar rakyat hadir sebagai peluang untuk mahasiswa berwirausaha dan membantu meningkatkan ekonomi masyarakat. Konsep yang diangkat pasar rakyat adalah menyajikan perpaduan penjualan tradisional dan kekinian",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffF0F0F0),
                    ),
                  ),
                  SizedBox(
                    height: 67,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/imgpasar2 1.png",
                      width: 250,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 2.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/bg-pattern-hp.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(58.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/judultema.png",
                          width: 250,
                        ),
                        SizedBox(height: 28),
                        Pasar(
                          warna: Color(0xff4A8068),
                          text1: "Prapti",
                          text2: "Kekuatan yang\nmenghasilkan\nsesuatu",
                        ),
                        Pasar(
                          warna: Color(0xffE62C20),
                          text1: "Hita",
                          text2: "Keuntungan",
                        ),
                        Pasar(
                          warna: Color(0xffF69722),
                          text1: "Abhipraya",
                          text2: "Mempunyai\nharapan",
                        ),
                        Pasar(
                          warna: Color(0xff9C4A9A),
                          text1: "Jagaddhita",
                          text2: "Kesejahteraan\ndunia",
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 38,
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text(
                            "bertujuan untuk membentuk kekuatan yang dapat menghasilkan keuntungan atau menguatkan perekonomian dan juga memiliki harapan yang besar untuk mewujudkan kesejahteraan masyarakat.",
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffF0F0F0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Image.asset(
                          "assets/judulinf.png",
                          width: 334,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 15,
                              width: 115,
                              color: Color(0xff9C4A9A),
                            ),
                            Container(
                              height: 15,
                              width: 115,
                              color: Color(0xff4A8068),
                            ),
                          ],
                        ),
                        Informasi(
                          angka: "4",
                          text: "Kategori",
                          warna: Color(0xffE62C20),
                        ),
                        Informasi(
                          angka: "66",
                          text: "Tenants",
                          warna: Color(0xff9C4A9A),
                        ),
                        Informasi(
                          angka: "350",
                          text: "Produk",
                          warna: Color(0xffF69722),
                        ),
                      ],
                    ),
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
