import 'package:flutter/material.dart';
import 'package:moistwears/bottomnavigation/bottomnav.dart';

import '../../../constants/elevatedbutton.dart';

class GoToHome extends StatelessWidget {
  const GoToHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/background.png'),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Image.asset('assets/happy.png'),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Welcome to Streetwear!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomElevated(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNav()));
                      },
                      color: Colors.black,
                      child: const Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
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
