import 'package:category/movie/page/movie_page.dart';
import 'package:category/place/page/place_page.dart';
import 'package:category/place/page/place_view.dart';

class CategoryList {
  String caption;
  String image;

  CategoryList({
    required this.caption,
    required this.image,
  });
}

final categoryList = [
  CategoryList(caption: 'Top Places', image: 'images/category/saint.jpg'),
  CategoryList(caption: 'Top Movies', image: 'images/category/movie.jpeg'),
  CategoryList(caption: 'Top Games', image: 'images/category/game.jpg'),
  CategoryList(caption: 'Top Car', image: 'images/category/car.jpg'),
  CategoryList(caption: 'Top Bike', image: 'images/category/bike.jpg'),
  CategoryList(caption: 'Top Places', image: 'images/category/saint.jpg'),
  CategoryList(caption: 'Top Places', image: 'images/category/saint.jpg'),
  CategoryList(caption: 'Top Places', image: 'images/category/saint.jpg'),
  CategoryList(caption: 'Top Places', image: 'images/category/saint.jpg'),
  CategoryList(caption: 'Top Places', image: 'images/category/saint.jpg'),

];

final pageList = [
  PlacePage.routeName,
  MoviePage.routeName,
];