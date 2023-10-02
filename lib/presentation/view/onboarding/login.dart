import 'package:flutter/material.dart';
import 'package:moistwears/presentation/view/onboarding/login2.dart';

import '../../../constants/elevatedbutton.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/background.png'),
                  ],
                ),
                const Positioned(
                  bottom: 30,
                  child: Text(
                    'Join Moist Streetwear',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Email',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Username',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Password',
              style: TextStyle(fontSize: 18),
            ),
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
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: 'By signing up you agree to our',
                  style: TextStyle(color: Colors.black)),
              WidgetSpan(
                  child: SizedBox(
                width: 5,
              )),
              TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700)),
              WidgetSpan(
                  child: SizedBox(
                width: 5,
              )),
              TextSpan(text: 'and', style: TextStyle(color: Colors.black)),
              WidgetSpan(
                  child: SizedBox(
                width: 5,
              )),
              TextSpan(
                  text: 'Terms of Service',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700))
            ])),
            const SizedBox(
              height: 40,
            ),
            CustomElevated(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoToHome()));
                },
                color: Colors.black,
                child: const Text(
                  'Create a free account',
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 15,
            ),
            CustomElevated(
                onPressed: () {},
                color: Colors.grey.shade200,
                child: const Text(
                  'Continue as guest',
                  style: TextStyle(color: Colors.black),
                )),
          ]),
        ),
      ),
    );
  }
}
