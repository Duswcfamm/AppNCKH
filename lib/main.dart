import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        colors: [
                          Colors.pink.shade900,
                          Colors.pink.shade800,
                          Colors.pink.shade400
                        ]
                    )
                ),
                child: SingleChildScrollView(
                    padding: EdgeInsets.all(32),
                    reverse: true,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                            child: Container(
                            width: 70,
                            height: 70,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/actvn_big_icon.png'),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                              color: Color(0xffd8d8d8),
                            ),
                            ),
                        ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                            child: Text("LOGIN", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 30
                            ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                            child: TextField(
                              style: TextStyle(fontSize: 18, color: Colors.black),
                              decoration: InputDecoration(
                                  labelText: "USERNAME",
                                  labelStyle: TextStyle(
                                      color: Color(0xff000000), fontSize: 15)
                        ),
                      ),
                    ),

                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: <Widget>[
                            TextField(
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black),
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "PASSWORD",
                                  labelStyle: TextStyle(color: Color(0xff000000), fontSize: 15)
                              ),
                            ),
                            GestureDetector(
                              onTap: onToggleShowPass,
                              child: Text(
                                "SHOW",
                                style: TextStyle(color: Colors.blue,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                            ),
                            )
                          ],
                        )
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    8))),
                          ),
                          onPressed: onSignInClicked,
                          child: Text("SIGN IN", style: TextStyle(
                              color: Colors.black, fontSize: 16),),
                        ),
                      ),
                    ),

                    Container(
                      height: 130,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("SIGN UP", style: TextStyle(
                              fontSize: 15, color: Color(0xff000000)),
                          ),
                          Text("FORGOT PASSWORD?",
                              style: TextStyle(fontSize: 15, color: Colors.blue)
                          )
                        ],
                      ),
                    ),
                  ],
                ))
            )
        )
    );
  }
  void onToggleShowPass(){
    setState(() {

    });
  }
  void onSignInClicked(){

  }
}
