import 'package:flutter/material.dart';
import 'package:helloworld/DetailPage.dart';

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          reverse: true,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Hero(
                  tag: "avatar-$index",
                  child: Image.network("https://picsum.photos/seed/$index/800"),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              onTap: () => _openDetail(context, index),
            );
          }),
    );
  }

  _openDetail(context, index) {
    final route = MaterialPageRoute(
      builder: (context) => DetailPage(index: index),
    );
    Navigator.push(context, route);
  }
}
