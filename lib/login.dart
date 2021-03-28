import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  final passwordControl = TextEditingController();
  final userNameControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: _Principal(context),
        ));
  }

  Widget _Principal(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/back.png"),
                fit: BoxFit.cover)),
        child: _LogIn(context));
  }

  Widget _LogIn(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _Img(),
          _Welcome(),
          _userName(),
          _paswword(),
          _enter(context)
        ],
      ),
    );
  }

  Widget _Welcome() {
    return Padding(
        padding: EdgeInsets.only(bottom: 50),
        child: Text(
          "Welcome back!",
          style: GoogleFonts.lato(color: Colors.white, fontSize: 30),
        ));
  }

  Widget _Img() {
    return Container(
      child: Image.asset(
        "assets/images/bird.png",
        width: 90,
        height: 90,
      ),
      padding: EdgeInsets.only(bottom: 30),
    );
  }

  Widget _enter(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          if (passwordControl.text == 'root' && userNameControl.text == 'root'){
            passwordControl.clear();
            userNameControl.clear();}
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(26))),
          backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromRGBO(255, 255, 255, 90)),
        ),
        child: Padding(
            padding:
            EdgeInsets.only(left: 110, right: 110, bottom: 15, top: 15),
            child: Text(
              "SIGN IN",
              style: GoogleFonts.lato(color: Colors.black, fontSize: 17),
            )));
  }

  Widget _userName() {
    return Theme(
      data: new ThemeData(
          primaryColor: Colors.white70, primaryColorDark: Colors.white70),
      child: Padding(
          padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
          child: Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.white70))),
            child: TextField(
              controller: userNameControl,
              style: GoogleFonts.lato(color: Colors.white),
              decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: GoogleFonts.lato(color: Colors.white70),
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
          )),
    );
  }

  Widget _paswword() {
    return Theme(
      data: new ThemeData(
          primaryColor: Colors.white70, primaryColorDark: Colors.white70),
      child: Padding(
          padding: EdgeInsets.only(left: 45, right: 45, bottom: 80),
          child: Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.white70))),
            child: TextField(
                controller: passwordControl,
                obscureText: true,
                style: GoogleFonts.lato(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: GoogleFonts.lato(color: Colors.white70),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                )),
          )),
    );
  }
}
