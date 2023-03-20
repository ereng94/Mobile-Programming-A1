import 'package:a_1/login.dart';
import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        title: const Text('Confirmation'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              child: const Text(
                'Enter the confirmation code',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirmation code',
                  hintText: 'Enter the confirmation code',
                  suffixIcon: Icon(Icons.confirmation_number),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey[800],
              ),
              child: Text('Submit'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
