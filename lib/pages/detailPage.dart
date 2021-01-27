import 'package:flutter/material.dart';
import 'package:poke_dex/pages/searchPage.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SearchPage();
            }));
          },
          child: Text("next screen"),
        ),
      ),
    );
  }
}
