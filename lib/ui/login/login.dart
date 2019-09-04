
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
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
      body: loginScreen(),
    );
  }

  Widget textFieldsLogin() => Container(
        child: Column(
          children: <Widget>[
            TextFormField(
              style: TextStyle(
                  color:Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Username',
                contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                hintStyle: TextStyle(
                    color: Colors.white
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.white,
                        width: 0.0
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.white,
                        width: 0.0
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: TextFormField(
                style: TextStyle(
                    color:Colors.white
                ),
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.white,
                          width: 0.0
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.white,
                          width: 0.0
                      )
                  ),
                ),
              ),
            )
          ],
        )
    );

  buttonLogin(BuildContext context) => Container(
    child: SizedBox(
      width: double.infinity,
      height: 45,
      child:  RaisedButton(
        textColor: Colors.white,
        elevation: 6,
        color: Colors.blueAccent,
        highlightColor: Colors.grey,
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'home');
        },
        child: const Text('login', style: TextStyle(fontSize: 20)),
      ),
    )
  );

  Widget loginScreen() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF0D47A1),
            Color(0xFF1976D2),
            Color(0xFF42A5F5),
          ],
        ),
      ),
      padding: EdgeInsets.only(left: 40, right: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          textFieldsLogin(),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: buttonLogin(context),
          )
        ],
      ),
    );
  }
}
