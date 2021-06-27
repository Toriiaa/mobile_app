import 'package:flutter/material.dart';
// import 'package: flutter/services.dart';
class SignUp extends StatefulWidget {
@override
SignUpState createState() =>SignUpState();
}


class SignUpState extends State<SignUp>{
String _radioVal = 'Male';
  static const menuItems = <String>[
    "Student",
    "Employer",
  ];
  String _btn2SelectedVal = 'Student';
  String _newValue = 'Employer';
  final List<DropdownMenuItem<String>> _dropDownMenuItems =menuItems.map(
    (String value)=> DropdownMenuItem<String>(
      value:value,
      child: Text(value),
    ),
  )
  .toList();
 
@override
Widget build(BuildContext context) {
  return Container(
    child: Stack(
    children: [
      Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child:         Column(
          children: [
            SizedBox(
              height: 20
            ),
            Text(
              "Welcome to My Intern App"
            ),
            SizedBox(
              height:20
            ),
            Text("Already have an account... Log in"),

            Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height:20
        ),
        Text(
          "First Name*"
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child:
            
            TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "First Name*",
              hintText: 'First Name',
              
            ),
          ),
        
          
          
          
          
        ),
       SizedBox(
         height: 10
       ),
       Text("Last Name*"),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Last Name",
              hintText: 'Last Name',
            ),
          ),
        
        ),


        DropdownButton(
          value: _btn2SelectedVal,
          hint: const Text('Student'),
          onChanged: (String newValue){
            setState(){
              _btn2SelectedVal = newValue;
            }
          }
        ),
       SizedBox(
         height:10
       ) ,
const Text("Gender"),
        Row(
          children: [ "Male", "Female"].map((String index)=> Radio<String>(
            value:index,
            groupValue : this._radioVal,
            onChanged: (String value){
              setState(()=> this._radioVal = value);
            },
          ))
          .toList(),
        ),



        Container(
                  child: Container(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Color.fromARGB(255, 46, 196, 182),
                      textColor: Colors.white,
                      child: Center(
                        // alignment: Alignment.center,
                        
                        child: Text(
                          'Next',
                          textScaleFactor: 0.8,
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    width: 336.0,
                    height: 48.0,
                  ),
                  margin: EdgeInsets.only(top: 18.0),
                ),
      ]
            ),




        


          ]
        )
        )

      )
    ]
  ) 
  );
  
}
}
 