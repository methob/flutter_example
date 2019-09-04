

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  final String title;

  @override
  State<StatefulWidget> createState() => LoginPageState();

  LoginPage(this.title);
}
class LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: loginScreen(),
    );
  }

  Widget loginScreen() {

  }

}
