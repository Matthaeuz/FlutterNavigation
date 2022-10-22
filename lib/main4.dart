import 'package:flutter/material.dart';
import 'package:prelim/icons.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                    const TextField(
                      style: TextStyle(height: 1, fontSize: 16),
                      decoration: InputDecoration(
                        hintText: "Enter username Here",
                        labelText: "Username",
                        isDense: true,
                      ),
                    ),
                    // Password Field
                    const TextField(
                      style: TextStyle(height: 1, fontSize: 16),
                      obscureText: true,
                      decoration: InputDecoration(
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
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomePage()),
                                      );
                                    },
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Title"),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            Image.asset('assets/images/menu_title.png'),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 320,
                    height: 100,
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/menu1.png'),
                  ),
                  Container(
                    width: 320,
                    height: 100,
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/menu2.png'),
                  ),
                  Container(
                    width: 320,
                    height: 100,
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/menu1.png'),
                  ),
                  Container(
                    width: 320,
                    height: 100,
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/menu2.png'),
                  ),
                  Container(
                    width: 320,
                    height: 100,
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/menu1.png'),
                  ),
                  Container(
                    width: 320,
                    height: 100,
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/menu2.png'),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    children: [
                      Builder(builder: (context) {
                        return const Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Good Afternoon!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        );
                      }),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            "Treat yourself with these dinner specials!",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  height: 230,
                  child: ListView(
                    // Dinner Special Cards
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 200,
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        color: const Color(0xffF2F2F4),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Image.asset(
                                  'assets/images/abq-sandwich-menu.png'),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("ABQ Sandwich",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                              ),
                            ),
                            Builder(builder: (context) {
                              return const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("₱251.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              );
                            }),
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        color: const Color(0xffF2F2F4),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Image.asset(
                                  'assets/images/Fring-Fries-menu.png'),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Fring Fries",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                              ),
                            ),
                            Builder(builder: (context) {
                              return const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("₱130.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              );
                            }),
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        color: const Color(0xffF2F2F4),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Image.asset(
                                  'assets/images/pollos-tenders-menu.png'),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Pollos Tenders",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                              ),
                            ),
                            Builder(builder: (context) {
                              return const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("₱329.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              );
                            }),
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        color: const Color(0xffF2F2F4),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Image.asset(
                                  'assets/images/slaw-goodman-menu.png'),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Slaw Goodman",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                              ),
                            ),
                            Builder(builder: (context) {
                              return const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("127.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              );
                            }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            GestureDetector(
              child: ButtonTheme(
                  minWidth: 100.0,
                  height: 50.0,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xffFEDC01),
                    ),
                    child: const Text('Logout',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffCCCCCC),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff999999),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff999999),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffCCCCCC),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            GestureDetector(
              child: ButtonTheme(
                  minWidth: 100.0,
                  height: 50.0,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xffFEDC01),
                    ),
                    child: const Text('Login',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Second()),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffCCCCCC),
                    ),
                    height: 100,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff999999),
                    ),
                    height: 100,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffCCCCCC),
                    ),
                    height: 100,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(),
              flex: 1,
            ),
            GestureDetector(
              child: ButtonTheme(
                  minWidth: 100.0,
                  height: 50.0,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xffFEDC01),
                    ),
                    child: const Text('Login',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Third()),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Third extends StatelessWidget {
  const Third({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffCCCCCC),
                    ),
                    height: 100,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff999999),
                    ),
                    height: 100,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffCCCCCC),
                    ),
                    height: 100,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffCCCCCC),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff999999),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff999999),
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ),
          ],
        ),
      ),
    );
  }
}
