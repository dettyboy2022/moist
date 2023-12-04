import 'package:flutter/material.dart';
import 'package:moistwears/presentation/view/authentication/email_and_pass.dart';
import 'package:moistwears/presentation/view/authentication/login2.dart';

import '../../../constants/elevatedbutton.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/png/background.png'),
                    ],
                  ),
                  const Positioned(
                    bottom: 30,
                    child: Text(
                      'Join Moist Streetwear',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const EmailandPass(),
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
      ),
    );
  }
}
