import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("New route"),
            ),
            body: Center(
                child: Text("This is new route"),
            ),
        );
    }
}