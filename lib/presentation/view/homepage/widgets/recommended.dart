import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/presentation/view/cart/addtocart.dart';

import '../../../models/recommended_model.dart';

class Recommended extends StatefulWidget {
  const Recommended({super.key});

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: recommend.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 2.2, crossAxisSpacing: 20, crossAxisCount: 2),
        itemBuilder: (context, index) {
          final selectedItem = recommend[index];
          return Column(
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddToCart(
                                  itemdetails: selectedItem,
                                )));
                  },
                  child: Image.asset(
                    recommend[index].image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                recommend[index].title,
                style: TextStyle(color: Colors.grey.shade500),
              ),
              Text(
                recommend[index].design,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        recommend[index].price.toString(),
                        style: const TextStyle(fontSize: 17),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        recommend[index].slashed.toString(),
                        style: const TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.red,
                            decorationThickness: 2),
                      )
                    ],
                  ),
                  GestureDetector(
                    child: const Icon(Iconsax.heart),
                  )
                ],
              )
            ],
          );
        });
  }
}
