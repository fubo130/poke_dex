import 'package:flutter/material.dart';
import 'package:poke_dex/components/sizeConfig.dart';
import 'package:poke_dex/components/labelCard.dart';

class CardList extends StatefulWidget {
  @override
  CardListState createState() => CardListState();
}

class CardListState extends State {
  // numPerRow: 每行显示组件的个数（用于计算每个组件所在的位置）
  int numPerRow;
  // margin: 组件所在的页边距
  // gap: 组件之间间距（在label模式下指上下间距，card模式下指距其他组件的上下左右间距）
  // cardWidth, cardHeight: 组件自身的大小
  double margin, gap, cardWidth, cardHeight;
  // isCard: 对内容是否为card进行判断
  bool isCard;
  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context);

    return Wrap();
  }

  setLayout() {
    switch (numPerRow) {
      case 1:
        this.setState(() {
          this.cardWidth = SizeConfig.widthPercent(98);
          this.cardHeight = 100;
          this.margin = SizeConfig.widthPercent(1);
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
          this.cardHeight = this.cardWidth * 1.5;
          this.margin = SizeConfig.widthPercent(4) / 5;
          this.isCard = true;
        });
        break;
    }
  }
}
