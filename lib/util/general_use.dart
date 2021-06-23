import 'package:flutter/material.dart';
Color color=Colors.blueAccent;
class MainLogoImage extends StatelessWidget {
  MainLogoImage(this.width,this.height);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/myInternLogocCrcle.jpg')),
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
      ),
    );
  }
}
class LandingScreenLogoImage extends StatelessWidget {
  LandingScreenLogoImage(this.width,this.height);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        image: DecorationImage(

            fit: BoxFit.cover,
            image: AssetImage('images/myIntern-logo_white.png')),
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
      ),
    );
  }
}


class GoogleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0,
      height: 15.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/google-logo.jpg')),
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
      ),
    );
  }
}

class AppleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0,
      height: 15.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/login-apple.png')),
      ),
    );
  }
}

class SsoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0,
      height: 15.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/login-sso.png')),

      ),
    );
  }
}
class SignInMenuImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 20.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/ic_round-login.png')),

      ),
    );
  }
}