import 'package:flutter/material.dart';
import 'package:mobile_app/util/general_use.dart';
import 'package:mobile_app/screens/sign_in.dart';
import 'package:mobile_app/screens/sign_up.dart';

class GeneralGroup extends StatefulWidget {
  const GeneralGroup({Key? key}) : super(key: key);

  @override
  _GeneralGroupState createState() => _GeneralGroupState();
}

class _GeneralGroupState extends State<GeneralGroup> {
  Choice _selectedChoice = choices[0]; // The app's "state".

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.

    if (choice.title == "Login") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignIn()),
      );
    } else if (choice.title == "Sign up") {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUp()),);
    } else if (choice.title == "Student") {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        appBar: AppBar(
            leading: PopupMenuButton<Choice>(
              child: ElevatedButton(
                  onPressed: null,
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  style: ElevatedButton.styleFrom(onSurface: Colors.white)),
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choicesMenuOptions.map((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
            ),
            actions: <Widget>[
              //
              PopupMenuButton<Choice>(
                child: ElevatedButton(
                    onPressed: null,
                    child: SignInMenuImage(),
                    style: ElevatedButton.styleFrom(onSurface: Colors.white)),
                onSelected: _select,
                itemBuilder: (BuildContext context) {
                  return choices.map((Choice choice) {
                    return PopupMenuItem<Choice>(
                      value: choice,
                      child: Text(choice.title),
                    );
                  }).toList();
                },
              ),
            ],
            backgroundColor: Colors.white,
            toolbarHeight: 62.0,
            title: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: LandingScreenLogoImage(40.0, 40.0),
                ),
                Text(
                  "MyIntern",
                  style: TextStyle(color: color),
                ),
              ],
            )),
        body: ListView(
          children: [
            RemoteMeetingPana(20, 18),
            Container(
                height: 177.0,
                color: Color.fromARGB(255, 203, 243, 240),
                child: Column(
                  children: [
                    Text(
                      "Find temporary jobs",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w800),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "with,",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "MyIntern",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 14.0),
                      child: Text(
                        "We connect you with employers and help you",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    Container(
                      child: Text(
                        "find jobs that fit your schedule.",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                    ),
                    ElevatedButton(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(212.0, 40.0),
                          onSurface: Color.fromARGB(1, 0, 83, 135),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

// This app is a stateful, it tracks the user's current choice.

class Choice {
  const Choice(this.title);

  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice('Login'),
  const Choice('Sign up'),
];

const List<Choice> choicesMenuOptions = const <Choice>[
  const Choice('Student'),
  const Choice('Employer'),
];
