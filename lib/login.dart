import 'package:a_1/change-password.dart';
import 'package:a_1/forgot-password.dart';
import 'package:a_1/home.dart';
import 'package:a_1/sign-up.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Login Form'),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email Address',
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => home()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                    ),
                    child: const Text('Login'),
                  ),
                  Builder(
                    builder: (context) => ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ForgetPasswordPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                      ),
                      child: const Text('Forgot Password?'),
                    ),
                  ),
                  Builder(
                    builder: (context) => ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChangePasswordPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                      ),
                      child: const Text('Change Password?'),
                    ),
                  ),
                  Builder(
                    builder: (context) => ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                      ),
                      child: const Text('Register'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
