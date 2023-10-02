import 'package:flutter/material.dart';
import 'package:moistwears/constants/elevatedbutton.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/png/checked.png'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Thanks, Charles!',
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('You will receive your Order',
                  style: TextStyle(fontSize: 17)),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Friday, 16 June',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomElevated(
                  onPressed: () {
                    // navigate back to home
                  },
                  color: Colors.black,
                  child: const Text(
                    'Close',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
