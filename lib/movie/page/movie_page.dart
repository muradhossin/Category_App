import 'package:category/movie/list/movie_list.dart';
import 'package:category/movie/page/movie_view.dart';
import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  static const String routeName = '/movie';
  static int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top 30 Movies List'),
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(0.0),
          child: Card(
            elevation: 2,
            shape: Border.all(color: Colors.blue.shade300, width: 1),
            shadowColor: Colors.blueGrey,
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      MovieView.routeName,
                    );
                    value = index;
                  },
                  tileColor: Colors.grey.shade200,
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 44,
                      minHeight: 44,
                      maxWidth: 64,
                      maxHeight: 64,
                    ),
                    child: Image.asset(movieList[index].url, fit: BoxFit.cover),
                  ),
                  title: Text(
                    movieList[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    movieList[index].description,
                    style: TextStyle(fontStyle: FontStyle.italic),
                    textAlign: TextAlign.justify,
                  ),
                  trailing: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade800,
                          ),
                          Text('4.5')
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}