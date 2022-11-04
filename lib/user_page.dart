import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);
  
  

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {

  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 400,),
          Center(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: AnimatedAlign(
                alignment: isClicked ? Alignment.centerLeft : Alignment.center,
                duration: Duration(seconds: 1),
                child: Container(
                  height: 70,
                  width: 40,
                  color: Colors.lightGreen,
                  
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
