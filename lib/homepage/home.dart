import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/homepage/widgets/home_row.dart';
import 'package:moistwears/homepage/widgets/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hey Charles',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Icon(Iconsax.notification)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Search(),
              const SizedBox(
                height: 15,
              ),
              const HomeRow(),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'assets/banner.png',
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Deals of the Day',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                      child: Column(
                        children: [
                          Image.asset('assets/girl.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Miami Life Bodysuit'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Brown Combo'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                      child: Column(
                        children: [
                          Image.asset('assets/boy.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Miami Life Bodysuit'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Brown Combo'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                      child: Column(
                        children: [
                          Image.asset('assets/girl.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Miami Life Bodysuit'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Brown Combo'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                      child: Column(
                        children: [
                          Image.asset('assets/boy.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Miami Life Bodysuit'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Brown Combo'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                      child: Column(
                        children: [
                          Image.asset('assets/girl.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Miami Life Bodysuit'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Brown Combo'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                      child: Column(
                        children: [
                          Image.asset('assets/boy.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Miami Life Bodysuit'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Brown Combo'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
