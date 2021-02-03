// import 'package:flutter/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Global {
//   static SharedPreferences preferences;
//   static var pokemonList;
//   static bool firstLaunch;

//   static Future init() async {
//     // preferences = await SharedPreferences.getInstance();
//     // if (!preferences.containsKey('firstLaunch')) {
//     String str = await rootBundle.loadString('data/pokeList');
//     pokemonList = str.split(',');
//     preferences.setBool('firstLaunch', true);
//     // }
//     print(pokemonList);
//   }
// }
