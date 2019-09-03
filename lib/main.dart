import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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

  final leftColumm = Container(
    child: Padding (
       padding: EdgeInsets.all(10),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Title that may too big",
           style: TextStyle(fontWeight: FontWeight.bold,
           fontSize: 12),
           maxLines: 1,
           textAlign: TextAlign.center,
           ),
           Text("Subtitle that it's bigger than the last one")
         ],
      ),
    )
  );

  final rightColumm = Container(
    height: 200,
    child: Image.network("https://static.pexels.com/photos/596940/pexels-photo-596940.jpeg")
  );
  
  _getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(GestureDetector(
        child:
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: leftColumm,
                  ),
                  Expanded(
                    flex: 6,
                    child: rightColumm,
                  )
                ],
              ),
            ),
//        Padding(
//            padding: EdgeInsets.all(10.0),
//              child: Row(
//                children: [
//                  Expanded(
//                    flex: 4,
//                    child: Column(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children: [
//                        Text("Stranberry Pavlova",
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold
//                            )),
//                        Text("TEXTO2 TEXTO2 TEXTO2 TEXTO2 TEXTO2 "
//                            "TEXTO2 TEXTO2 TEXTO2 TEXTO2 TEXTO2",
//                          style: TextStyle(
//                              fontSize: 12
//                          ), textAlign: TextAlign.center,),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: [
//                            Icon(Icons.star),
//                            Icon(Icons.star),
//                            Icon(Icons.star),
//                            Icon(Icons.star),
//                            Icon(Icons.star),
//                            Text("170 Reviews")
//                          ],
//                        )
//                      ],
//                    )
//                  ),
//                  Expanded(
//                      flex: 6,
//                      child: Column(
//                        children: [
//                          Text("SHAUSHAUSHUSHA")
//                        ],
//                      )
//                  )
//                ],
//              ) ,
//            ),
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
//      )
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
