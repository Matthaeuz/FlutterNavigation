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
  State<MyHomePage> createState() => Third();
}

class Third extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffCCCCCC),
                    ),
                    height: 100,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff999999),
                    ),
                    height: 100,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffCCCCCC),
                    ),
                    height: 100,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffCCCCCC),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff999999),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff999999),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
          ],
        ),
      ),
    );
  }
}

class Second extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffCCCCCC),
                ),
                height: 100,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff999999),
                ),
                height: 100,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffCCCCCC),
                ),
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class First extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffCCCCCC),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff999999),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff999999),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffCCCCCC),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
          ],
        ),
      ),
    );
  }
}
