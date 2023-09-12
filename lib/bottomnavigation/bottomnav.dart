import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/bottomnavigation/cart.dart';
import 'package:moistwears/bottomnavigation/favourite.dart';
import 'package:moistwears/bottomnavigation/profile.dart';

import '../homepage/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

int currentIndex = 0;

List<Widget> pages = [
  const Home(),
  const Favourite(),
  const Cart(),
  const Profile()
];

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          elevation: 0,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.heart), label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.shopping_bag), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.profile_2user), label: 'Profile'),
          ]),
    );
  }
}
