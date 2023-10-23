import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GridCard extends StatelessWidget {
  final String image;
  final String title;
  final String design;
  final int price;
  final int slashed;
  final VoidCallback onTap;

  const GridCard({
    super.key,
    required this.image,
    required this.title,
    required this.design,
    required this.price,
    required this.slashed,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: Colors.grey.shade300,
          ),
          child: GestureDetector(
            onTap: onTap,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey.shade500),
        ),
        Text(
          design,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '\$$price',
                  style: const TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '\$$slashed',
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.red,
                    decorationThickness: 2,
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                // add item to favourite;
              },
              child: Icon(
                Iconsax.heart5,
                color: Colors.grey.shade500,
              ),
            )
          ],
        )
      ],
    );
  }
}
