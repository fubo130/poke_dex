import 'package:flutter/material.dart';
import 'package:poke_dex/components/labelCard.dart';
import 'package:poke_dex/components/sizeConfig.dart';

class PageTwo extends StatefulWidget {
  myState createState() => myState();
}

class myState extends State {
  bool change = true;

//   changeLayout() {}

  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context);
    var width = SizeConfig.widthPercent(24);
    var height = width * 1.5;
    if (this.change) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Page #2"),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                print('layout change');
                this.setState(() {
                  change = !change;
                });
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
        // card测试
        body: Container(
          child: Row(
            children: [
              LabelCard(
                cardColor: Colors.indigo,
                cardWidth: width,
                cardHeight: height,
                icon: Image.asset('images/xhl.png'),
                title: '小火龙',
                description: '这是一只小火龙',
                isCard: true,
              ),
              LabelCard(
                cardColor: Colors.indigo,
                cardWidth: width,
                cardHeight: height,
                icon: Image.asset('images/abl.png'),
                title: '艾比郎',
                description: '这是一只艾比郎',
                isCard: true,
              ),
              LabelCard(
                cardColor: Colors.indigo,
                cardWidth: width,
                cardHeight: height,
                icon: Image.asset('images/grw.png'),
                title: '果然翁',
                description: '这是一只果然翁',
                isCard: true,
              ),
              LabelCard(
                cardColor: Colors.indigo,
                cardWidth: width,
                cardHeight: height,
                icon: Image.asset('images/wxkd.png'),
                title: '蚊香蝌蚪',
                description: '这是一只蚊香蝌蚪',
                isCard: true,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          margin: EdgeInsets.only(top: 4),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Page #2"),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                print('layout change');
                this.setState(() {
                  change = !change;
                });
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
        // label测试
        body: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              verticalDirection: VerticalDirection.down,
              children: [
                LabelCard(
                  cardColor: Colors.indigo,
                  cardWidth: SizeConfig.widthPercent(98),
                  cardHeight: SizeConfig.heightPercent(10),
                  icon: Image.asset('images/xhl.png'),
                  title: '小火龙',
                  description: '这是一只小火龙',
                  isCard: false,
                ),
                LabelCard(
                  cardColor: Colors.indigo,
                  cardWidth: SizeConfig.widthPercent(98),
                  cardHeight: SizeConfig.heightPercent(10),
                  icon: Image.asset('images/abl.png'),
                  title: '艾比郎',
                  description: '这是一只艾比郎',
                  isCard: false,
                ),
                LabelCard(
                  cardColor: Colors.indigo,
                  cardWidth: SizeConfig.widthPercent(98),
                  cardHeight: SizeConfig.heightPercent(10),
                  icon: Image.asset('images/grw.png'),
                  title: '果然翁',
                  description: '这是一只果然翁',
                  isCard: false,
                ),
                LabelCard(
                  cardColor: Colors.indigo,
                  cardWidth: SizeConfig.widthPercent(98),
                  cardHeight: SizeConfig.heightPercent(10),
                  icon: Image.asset('images/wxkd.png'),
                  title: '蚊香蝌蚪',
                  description: '这是一只蚊香蝌蚪',
                  isCard: false,
                ),
              ]),
          margin: EdgeInsets.all(SizeConfig.widthPercent(1)),
        ),
      );
    }
  }
}
