import 'package:flutter/material.dart';
import 'package:moistwears/bottomnavigation/bottomnav.dart';

class GoToHome extends StatelessWidget {
  const GoToHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.social_distance,
                size: 40,
              ),
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
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: const Size(double.infinity, 50)),
                  child: const Text(
                    'Continue',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNav()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
