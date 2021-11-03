import 'package:flutter/rendering.dart';
import 'package:js/js.dart';

import 'package:coba_flutter/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double getBigDiameter(BuildContext context) {
    return MediaQuery.of(context).size.width * (7 / 8);
  }

  double getSmallDiameter(BuildContext context) {
    return MediaQuery.of(context).size.width * (3 / 4);
  }

  TextEditingController controller1 = TextEditingController();

  TextEditingController controller2 = TextEditingController();

  FocusNode focusNodeNoHp = FocusNode();

  FocusNode focusNodePassword = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNodeNoHp.addListener(() {
      setState(() {});
    });
    focusNodePassword.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                top: -getSmallDiameter(context) / 3,
                right: -getSmallDiameter(context) / 3,
                child: Container(
                  width: getSmallDiameter(context),
                  height: getSmallDiameter(context),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Color(0xfff545dd), Color(0xffffb8f5)],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft)),
                ),
              ),
              Positioned(
                top: -getBigDiameter(context) / 4,
                left: -getBigDiameter(context) / 4,
                child: Container(
                  width: getBigDiameter(context),
                  height: getBigDiameter(context),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.yellow, Color(0xfffcffd9)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                  top: getBigDiameter(context) / 8,
                  left: getBigDiameter(context) / 12,
                  child: SizedBox(
                    width: getBigDiameter(context) / 2,
                    height: getBigDiameter(context) / 2,
                    child: Image(
                      image: AssetImage("assets/inekecake.png"),
                    ),
                  )),
              Positioned(
                  top: getBigDiameter(context) - 50,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Login Akun",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          child: TextField(
                            controller: controller1,
                            focusNode: focusNodeNoHp,
                            cursorColor: Colors.pinkAccent,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: "Nomor Handphone",
                                labelStyle: TextStyle(
                                    color: focusNodeNoHp.hasFocus
                                        ? Colors.pinkAccent
                                        : Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: Colors.pinkAccent))),
                          ),
                        ),
                        TextField(
                          controller: controller2,
                          focusNode: focusNodePassword,
                          cursorColor: Colors.pinkAccent,
                          decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: focusNodePassword.hasFocus
                                      ? Colors.pinkAccent
                                      : Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.pinkAccent))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MainPage();
                              }));
                            },
                            child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.pinkAccent,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
