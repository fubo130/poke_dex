import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:poke_dex/components/sizeConfig.dart';
import 'package:poke_dex/components/labelCard.dart';
import 'package:poke_dex/data/pokemon.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardList extends StatefulWidget {
  // nums: 外界传入的每行显示card数量
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

  // 初始化各项数据
  initialize() {
    setNumPerRow(widget.nums);
    setLayout();
    initList();
  }

  // 初始化list数据（fake data）
  initList() async {
    // pokemon名称list
    var arr;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    // 首次读取数据
    if (!preferences.containsKey('pokemonList')) {
      // 读取本地pokemon名称文件
      String str = await rootBundle.loadString('data/pokeList');
      arr = str.split(',');
      // 保存数据到本地
      preferences.setStringList('pokemonList', arr);
    } else {
      // 读取本地数据
      arr = preferences.getStringList('pokemonList');
    }

    for (int i = 0; i < 898; i++) {
      var x = i + 1;
      this.list.add(LabelCard(
            cardColor: Colors.indigo,
            cardWidth: this.cardWidth,
            cardHeight: this.cardHeight,
            imageURL:
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/$x.png',
            title: 'No: $x',
            description: arr[i],
            isCard: this.isCard,
          ));
    }
  }

  @override
  void initState() async {
    super.initState();
    String str = await rootBundle.loadString('data/pokeList');
    widget.names = str.split(',');
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

  // 设置每行显示卡片数量
  setNumPerRow(int num) {
    this.setState(() {
      this.numPerRow = num;
      this.list = [];
    });
  }

  // 根据每行卡片数量决定页面布局
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
