// Programmer: Aloysius Matthew A. Beronque
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prelim/icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFEDC01),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/lospolloshermanos.png'),
            Expanded(
              flex: 1,
              child: ButtonTheme(
                minWidth: 100.0,
                height: 50.0,
                child: Container(),
              ),
            ),
            // Login Form Container
            Container(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    // Login Title
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    // Username Field
                    TextField(
                      style: TextStyle(height: 1, fontSize: 16),
                      decoration: const InputDecoration(
                        hintText: "Enter username Here",
                        labelText: "Username",
                        isDense: true,
                      ),
                    ),
                    // Password Field
                    TextField(
                      style: TextStyle(height: 1, fontSize: 16),
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter password Here",
                        labelText: "Password",
                        isDense: true,
                      ),
                    ),
                    // Login and Sign-up button container
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 10,
                            child: GestureDetector(
                              child: ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color(0xffFEDC01),
                                    ),
                                    child: const Text('Login',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {},
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonTheme(
                              minWidth: 100.0,
                              height: 50.0,
                              child: Container(),
                            ),
                          ),
                          Expanded(
                              flex: 10,
                              child: ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color(0xffFEDC01),
                                    ),
                                    child: const Text('Sign up',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {},
                                  ))),
                        ],
                      ),
                    ),
                    // Facebook Button
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.facebook,
                                size: 18, color: Colors.white),
                            label: const Text("Connect via Facebook",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: const Color(0xff39579A),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Google Button
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(MyFlutterApp.google,
                                size: 18, color: Colors.white),
                            label: const Text("Connect via Google",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: const Color(0xffDF4A32),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
