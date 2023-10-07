import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/elevatedbutton.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade400),
            height: MediaQuery.of(context).size.width * 1.3,
            child: Image.asset(
              'assets/png/lady.png',
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'More Of Me Mesh Skirt Set - Turquoise',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset('assets/png/star5.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('(100)')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      '#40,000',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Lagos, Nigeria',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        decorationColor: Colors.blue,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomElevated(
                    onPressed: () {},
                    color: Colors.black,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add To Cart',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Iconsax.shopping_cart,
                          color: Colors.white,
                        )
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
