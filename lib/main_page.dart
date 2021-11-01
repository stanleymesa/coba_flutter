import 'dart:io';

import 'package:coba_flutter/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController controller = TextEditingController();

  String showText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff130F7F), Color(0xffFA8713)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
          )),
          actions: [
            IconButton(
              icon: Icon(Icons.admin_panel_settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
          ],
          title: Text("Main Page"),
          leading: Icon(
            Icons.person,
            color: Colors.white,
          )),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 3,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: Column(
                      children: [Icon(Icons.person_add), Text("Add Person")],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 16, 16, 16),
                    child: Column(
                      children: [Icon(Icons.person_add), Text("Add Person")],
                    ),
                  ),
                ],
              ),
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  labelText: "Masukkan Text",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            Text(showText),
            ElevatedButton(
              onPressed: () {
                showText = controller.text;
                setState(() {});
              },
              child: Text("Show Text"),
              style: ElevatedButton.styleFrom(primary: Colors.amber),
            ),
            ElevatedButton(
              child: Text("To Second Page"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.teal, onPrimary: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
