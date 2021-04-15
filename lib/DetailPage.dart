import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.7,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Item #$index"),
              background: Hero(
                tag: "avatar-$index",
                child: Image.network(
                  "https://i.picsum.photos/id/793/800/800.jpg?hmac=VTB0sPiOGbRWXPoeQ6jdzYp1L21VpSP6KSx4ls75OFE",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
