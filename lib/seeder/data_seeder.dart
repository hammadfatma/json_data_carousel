// import 'dart:convert';
//
// import 'package:flutter/services.dart';
//
// import '../models/advertisement_model.dart';
// import '../models/category_model.dart';
// import '../models/product_model.dart';
//
// class DataSeeder{
//   static Future<List<DataSeeder>> loadData()async{
//     final response = await rootBundle.loadString('assets/data/data.json');
//     if(response !=null){
//       final data = jsonDecode(response);
//       // products = (data['products'] as List).map((e) => Products.fromJson(e)).toList();
//       // categories = (data['categories'] as List).map((e) => Categories.fromJson(e)).toList();
//       final ads = data['advertisements'] as List<dynamic>;
//       final advertisements = ads.map((e) => Advertisements.fromJson(e)).toList();
//       return advertisements;
//     }else{
//       throw Exception('Failed to fetch ads');
//     }
//   }
// }