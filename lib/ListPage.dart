import 'package:flutter/material.dart';
import 'package:helloworld/Formpage.dart';
import 'package:helloworld/HeroAnimation%20.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroAnimation()),
            );
          },
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     final title = 'Horizontal List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         body:

//         // Container(
//         //   margin: EdgeInsets.symmetric(vertical: 20.0),
//         //   height: 200.0,
//         //   child: ListView(
//         //     scrollDirection: Axis.horizontal,
//         //     children: <Widget>[

//         //       Image.network('https://picsum.photos/250?image=9'),
//         //       Container(
//         //         width: 160.0,
//         //         color: Colors.blue,
//         //       ),
//         //       Container(
//         //         width: 160.0,
//         //         color: Colors.green,
//         //       ),
//         //       Container(
//         //         width: 160.0,
//         //         color: Colors.yellow,
//         //       ),
//         //       Container(
//         //         width: 160.0,
//         //         color: Colors.orange,
//         //       ),
//         //     ],
//         //   ),
//         // ),
//       ),
//     );
//   }
// }
