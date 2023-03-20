import 'package:a_1/sign-up.dart';
import 'package:flutter/material.dart';
import 'login.dart';
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('Barber Shop'),
            centerTitle: true,
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center( child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/logo.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text('Log In'),
                  ),
              ),
              SizedBox(height: 10),
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  child: Text('Sign Up'),
                ),
              ),
            ],
          ),
          ),
        ),
      );
  }
}