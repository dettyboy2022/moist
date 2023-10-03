import 'package:flutter/material.dart';
import 'package:moistwears/constants/elevatedbutton.dart';
import 'package:moistwears/presentation/view/authentication/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/frame2.png',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/frame3.png',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Find Your',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/moistvector.png'),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Favorite Wears',
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomElevated(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      color: Colors.black,
                      child: const Text(
                        'Get Started',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
