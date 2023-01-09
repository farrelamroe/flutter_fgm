import "package:flutter/material.dart";
import 'package:flutter_fgm/pages/landing_page.dart';
import "package:google_fonts/google_fonts.dart";

class LoginPage extends StatelessWidget {
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
      backgroundColor: Color(0xff202020),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 100,
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png"),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: GoogleFonts.montserrat(
                  color: Color(0xffF0F0F0),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  fillColor: Color(0xff1A1A1A),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none),
                  hintText: "Email",
                  hintStyle: GoogleFonts.openSans(
                    color: Color(0xff6f7075),
                  ),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Color(0xff6f7075),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                style: GoogleFonts.montserrat(
                  color: Color(0xffF0F0F0),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  fillColor: Color(0xff1A1A1A),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none),
                  hintText: "Password",
                  hintStyle: GoogleFonts.openSans(
                    color: Color(0xff6f7075),
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color(0xff6f7075),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Color(0xff6f7075),
                  ),
                ),
              ),
              SizedBox(height: 6),
              Container(
                alignment: Alignment(-1, 1),
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Color(0xffF0F0F0),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(17),
                  child: InkWell(
                    splashColor: Colors.amber,
                    borderRadius: BorderRadius.circular(17),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LandingPage();
                          },
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff171717),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
