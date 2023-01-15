import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Pasar extends StatelessWidget {
  Color warna;
  String text1;
  String text2;

  Pasar({
    required this.warna,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 233,
      color: warna,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: GoogleFonts.montserrat(
              fontSize: 36,
              fontWeight: FontWeight.w800,
              color: Color(0xffF0F0F0),
              decoration: TextDecoration.underline,
            ),
          ),
          Text(
            text2,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xffF0F0F0),
            ),
          ),
        ],
      ),
    );
  }
}

class Informasi extends StatelessWidget {
  String angka;
  String text;
  Color warna;

  Informasi({
    required this.angka,
    required this.text,
    required this.warna,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 300,
          color: Color(0xff171717),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                angka,
                style: GoogleFonts.montserrat(
                  fontSize: 64,
                  fontWeight: FontWeight.w900,
                  color: Color(0xffF0F0F0),
                ),
              ),
              Text(
                text,
                style: GoogleFonts.montserrat(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: Color(0xffF0F0F0),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 20,
          color: warna,
        ),
      ],
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.5, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
