import 'package:flutter/material.dart';
import 'package:moistwears/onboarding/login2.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // backgroundColor: Colors.red,
      //     // toolbarHeight: 200,
      //     // title: Stack(
      //     //   children: [
      //     //     Row(
      //     //       mainAxisAlignment: MainAxisAlignment.end,
      //     //       children: [
      //     //         Image.asset('assets/background.png'),
      //     //       ],
      //     //     ),
      //     //     const Text(
      //     //       'Join Moist Streetwear',
      //     //       style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
      //     //     ),
      //     //   ],
      //     // ),
      //     ),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoToHome()));
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
      ),
    );
  }
}
