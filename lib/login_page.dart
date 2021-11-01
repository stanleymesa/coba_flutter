import 'package:coba_flutter/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: Text("To Main Page"),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.teal, onPrimary: Colors.white)),
      ),
    );
  }
}
