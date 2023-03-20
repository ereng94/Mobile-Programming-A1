import 'package:a_1/confirmation-page.dart';
import 'package:a_1/home.dart';
import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        title: const Text('Forget Password'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ConfirmationPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[800],
                ),
                child: const Text('Reset Password'),
              ),
              Builder(builder: (context) => ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[800],
                ),
                child: const Text('Back to Homepage'),
              ),)
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
