import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/presentation/models/recommended_model.dart';

import '../../../constants/elevatedbutton.dart';

class AddToCart extends StatefulWidget {
  final Items itemdetails;
  const AddToCart({super.key, required this.itemdetails});

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
            height: MediaQuery.of(context).size.width * 1.2,
            child: Image.asset(
              widget.itemdetails.image,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.itemdetails.title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
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
                Row(
                  children: [
                    Text(
                      widget.itemdetails.price.toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
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
