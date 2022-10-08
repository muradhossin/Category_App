import 'dart:async';

import 'package:category/category/list/category_list.dart';
import 'package:category/category/page/category_provider.dart';
import 'package:category/place/list/place_list.dart';
import 'package:category/place/page/place_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  static const String routeName = '/category';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
      ),
      body: ListView.builder(
        itemCount: categoryList.length,
            itemBuilder: (context, index) => InkWell(
              onTap: (){
                Navigator.pushNamed(context, pageList[index]);

              },
              child: Stack(
                children: [
                  Card(
                    elevation: 10,
                    shape: Border.all(color: Colors.cyan, width: 2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        categoryList[index].image,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Colors.black, Colors.transparent],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0.01, 0.5]
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 15,
                      left: 0,
                      right: 0,
                      child: Text(
                        categoryList[index].caption,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: FloatingActionButton(
                        onPressed: () {
                        },
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
      );
  }
}
