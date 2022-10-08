import 'package:category/place/page/place_view.dart';
import 'package:flutter/material.dart';
import '../list/place_list.dart';

class PlacePage extends StatelessWidget {
  const PlacePage({Key? key}) : super(key: key);

  static const String routeName = '/place';
  static int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top 30 Tourist Places'),
      ),
      body: ListView.builder(
        itemCount: placeList.length,
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
                      PlaceView.routeName,
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
                    child: Image.asset(placeList[index].url, fit: BoxFit.cover),
                  ),
                  title: Text(
                    placeList[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    placeList[index].description,
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
