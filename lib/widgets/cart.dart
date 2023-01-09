// ignore_for_file: empty_constructor_bodies

import "package:google_fonts/google_fonts.dart";
import "package:flutter/material.dart";

class Cart extends StatelessWidget {
  String foto;
  String judul;
 

  Cart({
    required this.foto,
    required this.judul,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 341.18,
      width: 288,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(foto),
        ),
      ),
      child: Align(
        alignment: Alignment(0, 0.8),
        child: Text(
          judul,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            color: Color(0xffF0F0F0),
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
