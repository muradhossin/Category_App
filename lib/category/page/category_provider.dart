import 'package:flutter/material.dart';

class CategoryProvider extends ChangeNotifier{
  int index = 0;
  List<Color> colorList = [Colors.white, Colors.red];

  increseIndex(){
    index = 1;
    notifyListeners();
  }


}