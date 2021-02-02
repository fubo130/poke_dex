import 'package:flutter/material.dart';
import 'package:poke_dex/components/sizeConfig.dart';
import 'package:poke_dex/components/cardList.dart';

class PageTwo extends StatefulWidget {
  MyState createState() => MyState();
}

class MyState extends State {
//   bool isCard = true;
  int nums = 4;

  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page #2"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              print('layout isCard');
            },
            child: Icon(
              Icons.filter_list,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              // 列表格式选择
              child: PopupMenuButton<int>(
                icon: Icon(Icons.format_size),
                offset: Offset(100, 100),
                onSelected: (value) {
                  this.setState(() {
                    this.nums = value;
                  });
                },
                itemBuilder: (context) {
                  return <PopupMenuEntry<int>>[
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text('每行1个'),
                    ),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Text('每行2个'),
                    ),
                    PopupMenuItem<int>(
                      value: 3,
                      child: Text('每行3个'),
                    ),
                    PopupMenuItem<int>(
                      value: 4,
                      child: Text('每行4个'),
                    ),
                  ];
                },
              ))
        ],
      ),
      body: Container(
          child: CardList(
        nums: this.nums,
      )),
    );
  }
}
