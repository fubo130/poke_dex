import 'package:flutter/material.dart';
import 'package:poke_dex/components/sizeConfig.dart';
import 'package:poke_dex/components/labelCard.dart';

class CardList extends StatefulWidget {
  final int nums;
  CardList({Key key, @required this.nums}) : super(key: key);
  @override
  CardListState createState() => CardListState();
}

class CardListState extends State<CardList> {
  // numPerRow: 每行显示组件的个数（用于计算每个组件所在的位置）
  int numPerRow;
  // margin: 组件所在的页边距
  // gap: 组件之间间距（在label模式下指上下间距，card模式下指距其他组件的上下左右间距）
  // cardWidth, cardHeight: 组件自身的大小
  double margin, gap, cardWidth, cardHeight;
  // isCard: 对内容是否为card进行判断
  bool isCard;
// list: 卡片组
  List<LabelCard> list = [];

  initialize() {
    print('change');
    setNumPerRow(widget.nums);
    setLayout();
    initList();
  }

  initList() {
    for (int i = 0; i < 50; i++) {
      if (i % 4 == 0) {
        this.list.add(LabelCard(
              cardColor: Colors.indigo,
              cardWidth: this.cardWidth,
              cardHeight: this.cardHeight,
              icon: Image.asset('images/xhl.png'),
              title: '小火龙',
              description: '这是一只小火龙',
              isCard: this.isCard,
            ));
      } else if (i % 4 == 1) {
        this.list.add(LabelCard(
              cardColor: Colors.indigo,
              cardWidth: this.cardWidth,
              cardHeight: this.cardHeight,
              icon: Image.asset('images/abl.png'),
              title: '艾比郎',
              description: '这是一只艾比郎',
              isCard: this.isCard,
            ));
      } else if (i % 4 == 2) {
        this.list.add(LabelCard(
              cardColor: Colors.indigo,
              cardWidth: this.cardWidth,
              cardHeight: this.cardHeight,
              icon: Image.asset('images/grw.png'),
              title: '果然翁',
              description: '这是一只果然翁',
              isCard: this.isCard,
            ));
      } else if (i % 4 == 3) {
        this.list.add(LabelCard(
            cardColor: Colors.indigo,
            cardWidth: this.cardWidth,
            cardHeight: this.cardHeight,
            icon: Image.asset('images/wxkd.png'),
            title: '蚊香蝌蚪',
            description: '这是一只蚊香蝌蚪',
            isCard: this.isCard));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context);
    initialize();
    return Container(
      child: GridView(
        children: this.list,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: this.cardWidth / this.cardHeight,
            crossAxisCount: this.numPerRow,
            crossAxisSpacing: this.margin,
            mainAxisSpacing: this.isCard ? this.margin : 5),
      ),
      margin: EdgeInsets.only(top: 2),
      //   decoration: BoxDecoration(
      //   border: Border.all(
      //   color: Colors.red, width: 0.5, style: BorderStyle.solid)),
      //   margin: EdgeInsets.only(top: 5),
    );
  }

  setNumPerRow(int num) {
    this.setState(() {
      this.numPerRow = num;
      this.list = [];
    });
  }

  setLayout() {
    switch (numPerRow) {
      case 1:
        this.setState(() {
          this.cardWidth = SizeConfig.widthPercent(98);
          this.cardHeight = 100;
          this.margin = SizeConfig.heightPercent(10);
          this.isCard = false;
        });
        break;

      case 2:
        this.setState(() {
          this.cardWidth = SizeConfig.widthPercent(49);
          this.cardHeight = this.cardWidth * 1.5;
          this.margin = SizeConfig.widthPercent(2) / 3;
          this.isCard = true;
        });
        break;

      case 3:
        this.setState(() {
          this.cardWidth = SizeConfig.widthPercent(32);
          this.cardHeight = this.cardWidth * 1.5;
          this.margin = SizeConfig.widthPercent(4) / 4;
          this.isCard = true;
        });
        break;

      case 4:
        this.setState(() {
          this.cardWidth = SizeConfig.widthPercent(24);
          this.cardHeight = this.cardWidth * 1.6;
          this.margin = SizeConfig.widthPercent(4) / 5;
          this.isCard = true;
        });
        break;
    }
  }
}
