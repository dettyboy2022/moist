import 'package:flutter/material.dart';
import 'package:moistwears/onboarding/login2.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Join Moist Streetwear',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Email'),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Username'),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Password'),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          const Text('Use 8+ characters'),
          const SizedBox(
            height: 20,
          ),
          const Text(
              'By signing up your agree to our Privacy Policy and Terms of Service'),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text(
                'Create a free account',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const GoToHome()));
              }),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text(
                'Continue as guest',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {}),
        ]),
      ),
    );
  }
}
