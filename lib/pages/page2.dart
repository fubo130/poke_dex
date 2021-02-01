import 'package:flutter/material.dart';
import 'package:poke_dex/components/labelCard.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page #2"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              print('layout change');
            },
            child: Icon(
              Icons.filter_list,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print('size change');
                },
                child: Icon(
                  Icons.format_size,
                ),
              ))
        ],
      ),
      body: Center(
        child: Row(
          children: [
            LabelCard(
              cardColor: Colors.indigo,
              cardWidth: 100,
              cardHeight: 150,
              icon: Image.asset('images/xhl.png'),
              title: '小火龙',
              description: '这是一只小火龙',
              isCard: true,
            ),
            LabelCard(
              cardColor: Colors.indigo,
              cardWidth: 100,
              cardHeight: 150,
              icon: Image.asset('images/abl.png'),
              title: '艾比郎',
              description: '这是一只艾比郎',
              isCard: true,
            ),
            LabelCard(
              cardColor: Colors.indigo,
              cardWidth: 100,
              cardHeight: 150,
              icon: Image.asset('images/grw.png'),
              title: '果然翁',
              description: '这是一只果然翁',
              isCard: true,
            ),
            LabelCard(
              cardColor: Colors.indigo,
              cardWidth: 100,
              cardHeight: 150,
              icon: Image.asset('images/wxkd.png'),
              title: '蚊香蝌蚪',
              description: '这是一只蚊香蝌蚪',
              isCard: true,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}
