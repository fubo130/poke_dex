import 'package:flutter/material.dart';
import 'package:poke_dex/components/sizeConfig.dart';

class LabelCard extends StatelessWidget {
  @required
  // icon: 卡片显示的图片
  final Image icon;
  // title: 卡片显示内容的标题
  // description: 卡片显示内容的详细信息
  final String title, description;
  // cardWidth, cardHeight:
  final double cardWidth, cardHeight;
  final Color cardColor;
  final bool isCard;
  LabelCard(
      {Key key,
      this.icon,
      this.title,
      this.description,
      this.cardWidth,
      this.cardHeight,
      this.cardColor,
      this.isCard})
      : super(key: key);
//   CardState createState() => CardState();
  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context);
    // return Stack(
    //     //   alignment: AlignmentGeometry,
    //     );
    // return createCard();
    return Container(
      child: Stack(
        children: <Widget>[
          // 图标定位
          Positioned(
              child: Container(
                child: this.icon,
                width: this.cardWidth * 0.55,
                height: this.cardWidth * 0.55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.red,
                        width: 0.5,
                        style: BorderStyle.solid)),
              ),
              left: this.cardWidth / 20,
              top: this.cardWidth / 20),
          // 标题定位
          Positioned(
              child: Container(
                child: Text(this.title),
                width: this.cardWidth / 2,
                height: this.cardHeight / 8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.red,
                        width: 0.5,
                        style: BorderStyle.solid)),
              ),
              left: this.cardWidth / 20,
              top: this.cardHeight / 10 + this.cardWidth * 0.55),
          // 详情定位
          Positioned(
              child: Container(
                child: Text(this.description),
                width: this.cardWidth - this.cardWidth / 10,
                height: this.cardHeight / 4 + 4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.red,
                        width: 0.5,
                        style: BorderStyle.solid)),
              ),
              left: this.cardWidth / 20,
              top: this.cardHeight * 3 / 20 + this.cardWidth * 0.6 + 12),
          // button定位
          Positioned(
            child: Container(
              child: GestureDetector(
                onTap: () {
                  print('Do something else');
                },
                child: Icon(Icons.favorite),
              ),
              width: this.cardWidth * 0.25,
              height: this.cardWidth * 0.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.red, width: 0.5, style: BorderStyle.solid)),
            ),
            right: this.cardWidth / 20,
            top: this.cardWidth / 20,
          ),
        ],
        alignment: Alignment.topLeft,
      ),
      decoration: new BoxDecoration(
        color: this.cardColor,
      ),
      height: this.cardHeight,
      width: this.cardWidth,
    );
  }

  createCard() {
    if (this.isCard) {
      print('yes');
      buildCard();
    } else {
      buildLabel();
    }
  }

  Widget buildCard() {
    return Container(
      child: Stack(
        children: <Widget>[
          // 图标定位
          Positioned(
              child: Image.asset('images/xhl.png'),
              // width: this.cardWidth / ,
              left: this.cardWidth / 20,
              top: this.cardHeight / 10),
          // 标题定位
          // Positioned(child: null),
          // 详情定位
          // Positioned(child: null),
          // button定位
          // Positioned(child: null),
        ],
        alignment: Alignment.topLeft,
      ),
      decoration: new BoxDecoration(
        color: this.cardColor,
      ),
      height: this.cardHeight,
      width: this.cardWidth,
    );
  }

  buildLabel() {
    return Container(
        child: Stack(
          children: <Widget>[
            // 图标定位
            Positioned(
                child: this.icon,
                // width: this.cardWidth / ,
                left: this.cardWidth / 20,
                top: this.cardHeight / 10),
            // 标题定位
            Positioned(child: Text(this.title)),
            // 详情定位
            Positioned(child: Text(this.description)),
            // button定位
            // Positioned(child: null),
          ],
        ),
        height: this.cardHeight,
        width: this.cardWidth,
        color: this.cardColor);
  }
}

// class CardState extends State {

// }
