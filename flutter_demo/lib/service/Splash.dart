import 'dart:convert';

import 'package:flutter_demo/models/Splash.dart';
import 'package:http/http.dart' as http;

import '../screens/constants.dart';


Future<List<Splash>> loadSplashData() async{
  final response = await http.get(Uri.parse(loadSplashDataUrl));

  if(response.statusCode == 200){
    Iterable l = json.decode(response.body);
    //doi tuong co the lap dc
    return List<Splash>.from(l.map((value) => Splash.fromJson(value)));

  }else{
    throw Exception('failed to load splash data');

  }
}