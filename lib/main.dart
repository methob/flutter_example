import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test_one/ui/home/home.dart';
import 'package:flutter_test_one/ui/home/home_whats.dart';
import 'package:flutter_test_one/ui/login/login.dart';

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
      home: LoginPage('Login'),
      routes: <String, WidgetBuilder> {
        'login': (BuildContext context) => LoginPage('Login'),
        'home': (BuildContext context) => MyWhatsappHomePage(title: 'Whatsapp')
      },
//      MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


