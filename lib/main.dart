import 'package:flutter/material.dart';
import 'package:prelim/icons.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                                                const First()),
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