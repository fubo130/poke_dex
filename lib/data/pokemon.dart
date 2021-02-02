import 'dart:convert';
import 'package:dio/dio.dart';

class Pokemon {
  int id;
  String name;
  List<String> type = [];
  List<String> outlook = [];

  fetchPokemon(int id) async {
    Dio dio = Dio();
    var request;

    request = await dio.get('https://pokeapi.co/api/v2/pokemon/$id');

    var data = json.decode(request.toString());

    this.id = id;
    this.name = data['species']['name'];
    // this.outlook = data['sprites'];
    var t = data['types'];
    for (var i in t) {
      this.type.add(i['type']['name']);
    }

    var image = data['sprites'];
    this.outlook.add(image['front_default']);
    this.outlook.add(image['front_shiny']);
    print(this.id);
    print(this.name);
    print(this.type);
    print(this.outlook);
  }

  Pokemon(int id) {
    fetchPokemon(id);
  }
}
