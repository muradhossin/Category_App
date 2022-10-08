import 'package:category/place/list/place_view_list.dart';
import 'package:category/place/page/place_page.dart';
import 'package:flutter/material.dart';

class PlaceView extends StatelessWidget {
  const PlaceView({Key? key}) : super(key: key);

  static const String routeName = '/placeview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details information of Place"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [ Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(

                children: [
                  Image.asset(placeViewList[PlacePage.value].image,
                    width: double.infinity,
                  fit: BoxFit.cover,),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(placeViewList[PlacePage.value].title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                    subtitle: Text(placeViewList[PlacePage.value].subTile, style: TextStyle(fontSize: 16),),
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
                          Icon(Icons.call, color: Colors.blue,),
                          Text("Call"),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.near_me, color: Colors.blue,),
                          Text("Location"),
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
                    child: Text(placeViewList[PlacePage.value].description,
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

