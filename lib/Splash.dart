import 'dart:async';
import 'HomePage.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 3),(){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomePage())
    );});
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        height: double.infinity,
        width:double.infinity,
        color: Colors.black,
        child:Center(
          child: RichText(text: TextSpan(children: <TextSpan>[TextSpan(text: "C",style:TextStyle(color: Colors.white,fontSize: 20) ),
          TextSpan(text: "∀",style:TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold)),
          TextSpan(text: "LCUL",style:TextStyle(color: Colors.white,fontSize: 20) ),
          TextSpan(text: "∀",style:TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold)),
           TextSpan(text: "T",style:TextStyle(color: Colors.white,fontSize: 20) ),
           TextSpan(text: "θ",style:TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold)),
           TextSpan(text: "R",style:TextStyle(color: Colors.white,fontSize: 20) ),
          ]),),
        )
      )
    );
  }
}

