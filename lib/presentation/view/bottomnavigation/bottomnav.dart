import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/controllers/addtocart_provider.dart';
import 'package:moistwears/controllers/mainscreen_provider.dart';
import 'package:moistwears/presentation/view/cart/cart.dart';
import 'package:moistwears/presentation/view/favourite/favourite.dart';
import 'package:moistwears/presentation/view/profile/profile.dart';
import 'package:provider/provider.dart';
import '../homepage/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    final items = context.watch<CartNotifier>().items;

    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
                height: 70,
                activeColor: Colors.black,
                currentIndex: mainScreenNotifier.pageIndex,
                onTap: (index) {
                  mainScreenNotifier.setpageIndex(index);
                },
                items: <BottomNavigationBarItem>[
                  const BottomNavigationBarItem(
                      icon: Icon(Iconsax.home), label: 'Home'),
                  const BottomNavigationBarItem(
                      icon: Icon(Iconsax.heart), label: 'Favourite'),
                  BottomNavigationBarItem(
                      label: 'Cart',
                      icon: Badge(
                        smallSize: 0,
                        label: Text(items.length.toString()),
                        child: const Icon(Iconsax.shopping_bag),
                      )),
                  const BottomNavigationBarItem(
                      icon: Icon(Iconsax.profile_2user), label: 'Profile'),
                ]),
            tabBuilder: (context, index) {
              switch (mainScreenNotifier.pageIndex) {
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
      },
    );
  }
}
