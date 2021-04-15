import 'package:flutter/material.dart';
import 'package:helloworld/DetailPage.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class VerticalCardPagerDemo extends StatefulWidget {
  @override
  _VerticalCardPagerDemoState createState() => _VerticalCardPagerDemoState();
}

class _VerticalCardPagerDemoState extends State<VerticalCardPagerDemo> {
  final List<String> titles = [
    "RED",
    "YELLOW",
    "CYAN",
    "BLUE",
    "GREY",
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        child: Hero(
          tag:
              "https://i.picsum.photos/id/793/800/800.jpg?hmac=VTB0sPiOGbRWXPoeQ6jdzYp1L21VpSP6KSx4ls75OFE",
          child: Image.network(
              "https://i.picsum.photos/id/793/800/800.jpg?hmac=VTB0sPiOGbRWXPoeQ6jdzYp1L21VpSP6KSx4ls75OFE"),
        ),
      ),
      Container(
        child: Hero(
          tag:
              "https://i.picsum.photos/id/793/800/800.jpg?hmac=VTB0sPiOGbRWXPoeQ6jdzYp1L21VpSP6KSx4ls75OFE",
          child: Image.network(
              "https://i.picsum.photos/id/793/800/800.jpg?hmac=VTB0sPiOGbRWXPoeQ6jdzYp1L21VpSP6KSx4ls75OFE"),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vertical Card Pager',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: VerticalCardPager(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              titles: titles,
              images: images,
              onPageChanged: (page) {
                // final route = MaterialPageRoute(
                //   builder: (context) => DetailPage(),
                // );
                // Navigator.push(context, route);
              },
              align: ALIGN.CENTER,
              onSelectedItem: (index) {
                final route = MaterialPageRoute(
                  builder: (context) => DetailPage(),
                );
                Navigator.push(context, route);
              },
            ),
          ),
        ),
      ),
    );
  }

  _openDetail(context, index) {
    final route = MaterialPageRoute(
      builder: (context) => DetailPage(index: index),
    );
    Navigator.push(context, route);
  }
}
