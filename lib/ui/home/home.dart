
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_field
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  static final endColumm = Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.kitchen, color: Colors.green[500], size: 15),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("PREP:", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold)),),
            Text("25 min", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold))
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.timer, color: Colors.green[500], size: 15),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("PREP:", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold)),),
            Text("25 min", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold))
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.restaurant, color: Colors.green[500], size: 15),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("PREP:", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold)),),
            Text("25 min", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold))
          ],
        )
      ],
    ),
  );

  static var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500], size: 10,),
      Icon(Icons.star, color: Colors.green[500], size: 10,),
      Icon(Icons.star, color: Colors.green[500], size: 10,),
      Icon(Icons.star, color: Colors.black, size: 10,),
      Icon(Icons.star, color: Colors.black, size: 10,),
    ],
  );

  static final starsColumm = Container(
      height: 20,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            stars,
            Text("170 Reviews", style: TextStyle(
              fontSize: 10,
              color: Colors.black,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
            ),)
          ],
        ),
      )
  );

  final leftColumm = Container(
      child: Align(
          alignment: Alignment.bottomRight,
          child: Padding (
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Center(child: Text("Title that may too big",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    maxLines: 1, textAlign: TextAlign.center)),
                Padding(
                  child: Text("Subtitle that it's bigger than the last one", style: TextStyle(fontSize: 12),),
                  padding: EdgeInsets.only(top: 6),
                ),
                starsColumm,
                endColumm
              ],
            ),
          )
      )
  );

  final rightColumm = Container(
      height: 150,
      color: Colors.black,
      child: FittedBox(
        child: FadeInImage.assetNetwork(
            imageScale: 2,
            placeholder: 'assets/image_flutter.png',
            image: "https://quickbirdstudios.com/blog/wp-content/uploads/2018/06/16FB8FD2-6D3E-4EFA-9062-2231CA34F196-550x208.png"
        ),
        fit: BoxFit.fill,
      )
  );

  _getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(GestureDetector(
        child:
        Container(
          padding: EdgeInsets.only(top: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: leftColumm,
              ),
              Expanded(
                flex: 5,
                child: rightColumm,
              )
            ],
          ),
        ),
        onTap: () {
          print('row tapped');
        },
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
      ListView(
        children: _getListData(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}