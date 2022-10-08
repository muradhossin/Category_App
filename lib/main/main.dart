import 'dart:js';

import 'package:category/category/page/category_provider.dart';
import 'package:category/movie/page/movie_page.dart';
import 'package:category/movie/page/movie_view.dart';
import 'package:category/place/page/place_page.dart';
import 'package:category/place/page/place_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../category/page/category_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CategoryProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CategoryPage.routeName,
      routes: {
        CategoryPage.routeName: (context) => CategoryPage(),
        PlacePage.routeName: (context) => PlacePage(),
        PlaceView.routeName: (context) => PlaceView(),
        MoviePage.routeName: (context) => MoviePage(),
        MovieView.routeName: (context) => MovieView(),
      },
    );
  }
}
