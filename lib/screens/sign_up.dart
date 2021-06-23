import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
@override
SignUpState createState() =>SignUpState();
}


class SignUpState extends State<SignUp>{
@override
Widget build(BuildContext context) {
  return Stack(
    children: [
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            CircleAvatar(
              // radius: size.width*0.14,
              backgroundColor: Colors.green[400],
            )
          ]
        )
      )
    ]
  ) ;
}
}