import 'package:flutter/material.dart';
import 'package:poke_dex/pages/page1.dart';
import 'package:poke_dex/pages/page2.dart';
import 'package:poke_dex/pages/page3.dart';
import 'package:poke_dex/pages/page4.dart';

enum ItemType { a, b, c, d }

class App extends StatefulWidget {
  @override
  MainState createState() => MainState();
}

class MainState extends State {
  var _currentIndex = 0;

//   PageOne p1;

//   PageTwo p2;

//   PageThree p3;

//   PageFour p4;
//   currentPage() {
//     switch (_currentIndex) {
//       case 0:
//         if (p1 == null) {
//           p1 = new PageOne();
//         }

//         return p1;

//       case 1:
//         if (p2 == null) {
//           p2 = new PageTwo();
//         }

//         return p2;

//       case 2:
//         if (p3 == null) {
//           p3 = new PageThree();
//         }

//         return p3;

//       case 3:
//         if (p4 == null) {
//           p4 = new PageFour();
//         }

//         return p4;

//       default;
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('图鉴'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              print('Jump to Search page!');
              Navigator.pushNamed(context, '/searchPage');
            },
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print('Do something else');
                },
                child: Icon(Icons.add),
              )),
        ],
      ),

      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          new BottomNavigationBarItem(
            title: new Text('num: 1',
                style: TextStyle(
                    color: _currentIndex == 0
                        ? Color(0xff46c01b)
                        : Color(0xff999999))),
            icon: _currentIndex == 0
                ? Image.asset('images/PC.png', width: 32.0, height: 28.0)
                : Image.asset('images/xhl.png', width: 32.0, height: 28.0),
          ),
          new BottomNavigationBarItem(
            title: new Text('num: 2',
                style: TextStyle(
                    color: _currentIndex == 1
                        ? Color(0xff46c01b)
                        : Color(0xff999999))),
            icon: _currentIndex == 1
                ? Image.asset('images/PC.png', width: 32.0, height: 28.0)
                : Image.asset('images/grw.png', width: 32.0, height: 28.0),
          ),
          new BottomNavigationBarItem(
            title: new Text('num: 3',
                style: TextStyle(
                    color: _currentIndex == 2
                        ? Color(0xff46c01b)
                        : Color(0xff999999))),
            icon: _currentIndex == 2
                ? Image.asset('images/PC.png', width: 32.0, height: 28.0)
                : Image.asset('images/abl.png', width: 32.0, height: 28.0),
          ),
          new BottomNavigationBarItem(
            title: new Text('num: 4',
                style: TextStyle(
                    color: _currentIndex == 3
                        ? Color(0xff46c01b)
                        : Color(0xff999999))),
            icon: _currentIndex == 3
                ? Image.asset('images/PC.png', width: 32.0, height: 28.0)
                : Image.asset('images/wxkd.png', width: 32.0, height: 28.0),
          ),
        ],
      ),
      //   body: currentPage(),
    );
  }
}
