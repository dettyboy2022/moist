import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/presentation/view/homepage/widgets/home_row.dart';
import 'package:moistwears/presentation/view/homepage/widgets/recommended.dart';
import 'package:moistwears/presentation/view/homepage/widgets/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hey Charles',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Icon(Iconsax.notification)
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Search(),
                  SizedBox(
                    height: 15,
                  ),
                  HomeRow(),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/png/banner.png',
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
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 23),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      const Deals(),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recommended',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 23),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      const Recommended(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Deals extends StatelessWidget {
  const Deals({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.grey.shade300),
                child: Image.asset(
                  'assets/png/girl.png',
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                'Miami Life Bodysuit',
                style: TextStyle(color: Colors.grey.shade500),
              ),
              const Text(
                'Brown Combo',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '#6,000',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '#13,500',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.red,
                            decorationThickness: 2),
                      )
                    ],
                  ),
                  Icon(Icons.favorite_border)
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.grey.shade300),
                child: Image.asset(
                  'assets/boy.png',
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                'Miami Life Bodysuit',
                style: TextStyle(color: Colors.grey.shade500),
              ),
              const Text(
                'Brown Combo',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '#6,000',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '#13,500',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.red,
                            decorationThickness: 2),
                      )
                    ],
                  ),
                  Icon(Icons.favorite_border)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
