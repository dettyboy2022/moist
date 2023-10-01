import 'package:flutter/cupertino.dart';
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

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            activeColor: Colors.black,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.heart), label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.shopping_bag), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.profile_2user), label: 'Profile'),
            ]),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(child: Home());
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(child: Favourite());
                },
              );
            case 2:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(child: Cart());
                },
              );
            case 3:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(child: Profile());
                },
              );
          }
          return Container();
        });
  }
}
