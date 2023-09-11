import 'package:flutter/material.dart';
import 'package:moistwears/constants/elevatedbutton.dart';
import 'package:moistwears/onboarding/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const Text(
              'Find Your',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Favorite Wears',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomElevated(
                child: const Text('Get Started'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                }),
            const SizedBox(
              height: 10,
            ),
            CustomElevated(
                child: const Text('Continue as guest'), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
