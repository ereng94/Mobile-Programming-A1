import 'package:flutter/material.dart';

class SuccessfulRegisteredPage extends StatelessWidget {
  const SuccessfulRegisteredPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Successful Registered'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 40),
              const Icon(Icons.check_circle_outline, size: 100),
              const SizedBox(height: 30),
              const Text(
                'You have successfully registered!',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //TODO: Add functionality to navigate back to login page
                },
                child: const Text('Go to Login Page'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
