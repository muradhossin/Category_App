import 'package:category/movie/list/movie_view_list.dart';
import 'package:category/movie/page/movie_page.dart';
import 'package:flutter/material.dart';

class MovieView extends StatelessWidget {
  const MovieView({Key? key}) : super(key: key);

  static const String routeName = '/movieview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details information of Movie"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [ Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(

              children: [
                Image.asset(movieViewList[MoviePage.value].image,
                  width: double.infinity,
                  fit: BoxFit.cover,),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(movieViewList[MoviePage.value].title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  subtitle: Text(movieViewList[MoviePage.value].subTile, style: TextStyle(fontSize: 16),),
                  trailing: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: Text("R A T I N G",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color:  Colors.yellow.shade900,size: 25,),
                          Text("4.5",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("/5")
                        ],
                      ),

                    ],
                  ),

                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.play_circle_fill, color: Colors.blue,),
                        Text("Watch"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.download, color: Colors.blue,),
                        Text("Download"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.share,color: Colors.blue),
                        Text("Share"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(movieViewList[MoviePage.value].description,
                    textAlign: TextAlign.justify,),
                )
              ],
            ),

          ),
          ],

        ),
      ),
    );
  }
}