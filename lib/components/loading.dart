import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  LoadingState createState() => new LoadingState();
}

class LoadingState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds: 3), () {
      print("Loading....");
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Image.asset('images/loading.jpeg'),
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}
