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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/pattern.png"),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black26, BlendMode.dstATop)),
            gradient: LinearGradient(
                colors: [Color(0xfff70ad4), Color(0xffff8aee)],
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
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.edit),
                text: "Design",
              ),
              Tab(
                icon: Icon(Icons.cake),
                text: "Ready",
              ),
              Tab(
                icon: Icon(Icons.add_box),
                text: "Marmer",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
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
                            children: [
                              Icon(Icons.person_add),
                              Text("Add Person")
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 16, 16, 16),
                          child: Column(
                            children: [
                              Icon(Icons.person_add),
                              Text("Add Person")
                            ],
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondPage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal, onPrimary: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              child: Center(
                child: Text("Design Your Cake"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Tart Ready"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Kue Marmer"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
