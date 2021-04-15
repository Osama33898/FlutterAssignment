import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0),
                  height: 70,
                  width: 40,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  height: 70,
                  width: 40,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  height: 70,
                  width: 40,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  height: 70,
                  width: 40,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0),
                  height: 70,
                  width: 40,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  height: 70,
                  width: 40,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0),
                  height: 70,
                  width: 40,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  height: 70,
                  width: 40,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0),
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.75,
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: 40,
                        color: Colors.blue,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: 40,
                        color: Colors.blue,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
