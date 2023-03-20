import 'package:a_1/login.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        title: const Text('Change Password'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              child: const Text(
                'Enter your new password',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'New password',
                  hintText: 'Enter your new password',
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Builder(builder: (context) => ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
              ),
              child: const Text('Submit'),
            ),)
          ],
        ),
      ),
    );
  }
}
