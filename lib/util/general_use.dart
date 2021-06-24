import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
Color color=Colors.blueAccent;

class RemoteMeetingPana extends StatelessWidget {
  RemoteMeetingPana(this.width, this.height);
  final double width;
  final double height;
  final Widget svg = SvgPicture.asset(
      assetName1,


      semanticsLabel: 'Acme Logo'
  );
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Color.fromARGB(255, 203, 243, 240),
      width: 15.0,
      height: 300.0,
     child: svg,
    );
  }
}

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

final String assetName = 'images/myInternLogo.svg';
final String assetName1 = 'images/Remote-meeting-pana.svg';
class LandingScreenLogoImage extends StatelessWidget {
  LandingScreenLogoImage(this.width,this.height);
  final double width;
  final double height;
  final Widget svg = SvgPicture.asset(
      assetName,

      width: 50,
      height: 50,
      fit: BoxFit.contain,
      semanticsLabel: 'Acme Logo'
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.blueAccent,
     child: svg,
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