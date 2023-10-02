import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/constants/elevatedbutton.dart';
import 'package:moistwears/presentation/view/cart/address/personal.dart';

import '../../../../constants/custombar.dart';

class AddressInfo extends StatefulWidget {
  const AddressInfo({super.key});

  @override
  State<AddressInfo> createState() => _AddressInfoState();
}

class _AddressInfoState extends State<AddressInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Address',
      ),
      body: ListView(padding: const EdgeInsets.all(15), children: [
        const Text(
          'State',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration:
              InputDecoration(border: OutlineInputBorder(), hintText: 'Lagos'),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Full Name',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: 'Charles Ayomide'),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Phone',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: '+2349020551592'),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Postal Code',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration:
              InputDecoration(border: OutlineInputBorder(), hintText: '100001'),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Address',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'No 4, Surulere Lagos Nigeria'),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomElevated(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Personal()));
            },
            color: Colors.black,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add Address',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Iconsax.location,
                  color: Colors.white,
                )
              ],
            ))
      ]),
    );
  }
}
