import 'package:flutter/material.dart';
import 'package:poke_dex/components/sizeConfig.dart';

class LabelCard extends StatelessWidget {
  // icon: 卡片显示的图片
  FadeInImage icon;
  // title: 卡片显示内容的标题
  // description: 卡片显示内容的详细信息
  final String title, description, imageURL;
  // cardWidth, cardHeight: 卡片宽高
  final double cardWidth, cardHeight;
  // cardColor: 卡片背景颜色
  final Color cardColor;
  // isCard: 判断卡片种类
  final bool isCard;

  LabelCard(
      {
      // @required this.icon,
      @required this.title,
      @required this.description,
      @required this.cardWidth,
      @required this.cardHeight,
      @required this.cardColor,
      @required this.isCard,
      @required this.imageURL});

  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context);
    this.icon = FadeInImage.assetNetwork(
        placeholder: 'images/loading.gif', image: this.imageURL);
    if (this.isCard) {
      return buildCard();
    } else {
      return buildLabel();
    }
  }

  Widget buildCard() {
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
                  // border: Border.all(
                  // color: Colors.red,
                  // width: 0.5,
                  // style: BorderStyle.solid)
                ),
              ),
              left: this.cardWidth / 20,
              top: this.cardWidth / 20),
          // 标题定位
          Positioned(
              child: Container(
                child: Text(this.title),
                width: this.cardWidth - this.cardWidth / 10,
                height: this.cardHeight / 8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(
                  // color: Colors.red,
                  // width: 0.5,
                  // style: BorderStyle.solid)
                ),
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
                  // border: Border.all(
                  // color: Colors.red,
                  // width: 0.5,
                  // style: BorderStyle.solid)
                ),
              ),
              left: this.cardWidth / 20,
              top: this.cardHeight / 10 +
                  this.cardWidth * 0.55 +
                  this.cardHeight / 8 +
                  ((this.cardHeight -
                          (this.cardHeight / 10 +
                              this.cardWidth * 0.55 +
                              this.cardHeight / 8) -
                          (this.cardHeight / 4 + 4)) /
                      2)),
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
                  // color: Colors.white,
                  //   border: Border.all(
                  //   color: Colors.red, width: 0.5, style: BorderStyle.solid)
                  ),
            ),
            right: this.cardWidth / 20,
            top: this.cardWidth / 20,
          ),
        ],
        alignment: Alignment.topLeft,
      ),
      decoration: new BoxDecoration(
        color: this.cardColor,
        boxShadow: [
          BoxShadow(
              color: Color(0x993D3D3C),
              offset: Offset(0.5, 0.5),
              blurRadius: 0.2,
              spreadRadius: 1.0),
        ],
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
              child: Container(
                child: this.icon,
                height: this.cardHeight * 0.9,
                width: this.cardHeight * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(
                  // color: Colors.red,
                  // width: 0.5,
                  // style: BorderStyle.solid)
                ),
              ),
              left: this.cardHeight * 0.05,
              top: this.cardHeight * 0.05,
            ),

            // 标题定位
            Positioned(
              child: Container(
                child: Text(this.title),
                height: this.cardHeight * 0.43,
                width: this.cardWidth * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(
                  // color: Colors.red,
                  // width: 0.5,
                  // style: BorderStyle.solid)
                ),
              ),
              left: this.cardHeight * 0.9 + this.cardHeight * 0.1,
              top: this.cardHeight * 0.05,
            ),

            // 详情定位
            Positioned(
              child: Container(
                child: Text(this.description),
                width: this.cardWidth * 0.6,
                height: this.cardHeight * 0.43,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(
                  // color: Colors.red,
                  // width: 0.5,
                  // style: BorderStyle.solid)
                ),
              ),
              left: this.cardHeight * 0.9 + this.cardHeight * 0.1,
              bottom: this.cardHeight * 0.07,
            ),
            // button定位
            Positioned(
              child: Container(
                child: GestureDetector(
                  onTap: () {
                    print('Do something else');
                  },
                  child: Icon(Icons.favorite),
                ),
                width: this.cardHeight * 0.3,
                height: this.cardHeight * 0.3,
                decoration: BoxDecoration(
                    //   color: Colors.white,
                    // border: Border.all(
                    // color: Colors.red,
                    // width: 0.5,
                    // style: BorderStyle.solid)
                    ),
              ),
              right: this.cardHeight * 0.05,
              top: this.cardHeight * 0.05,
            ),
          ],
        ),
        height: this.cardHeight,
        width: this.cardWidth,
        color: this.cardColor);
  }
}
