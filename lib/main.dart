import 'package:flutter/material.dart';
import 'package:poke_dex/pages/detailPage.dart';
import 'package:poke_dex/pages/page1.dart';
import 'package:poke_dex/pages/page2.dart';
import 'package:poke_dex/pages/page3.dart';
import 'package:poke_dex/pages/page4.dart';
import 'package:poke_dex/pages/searchPage.dart';
import 'package:poke_dex/components/loading.dart';
import 'package:poke_dex/components/app.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '图鉴',
      theme: defaultTheme,
      routes: <String, WidgetBuilder>{
        'app': (BuildContext context) => new App(),
        '/detailPage': (BuildContext context) => new DetailPage(),
        '/searchPage': (BuildContext context) => new SearchPage(),
        '/pageOne': (BuildContext context) => new PageOne(),
        '/pageTwo': (BuildContext context) => new PageTwo(),
        '/pageThree': (BuildContext context) => new PageThree(),
        '/pageFour': (BuildContext context) => new PageFour(),
      },
      home: new LoadingPage(),
    ));

final ThemeData defaultTheme = new ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xffebebeb),
);
