import 'package:a_1/sign-up.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Barber Shop'),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/logo.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 10),
                Builder(
                  builder: (context) => ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                      ),
                      child: const Text('Log In')),
                ),
                Builder(
                  builder: (context) => ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                      ),
                      child: const Text('Sign Up')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
