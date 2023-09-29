import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/homepage/filter.dart';

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
              Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search Wears',
                          hintStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Filter()));
                        },
                        icon: const Icon(Iconsax.filter_add)),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
