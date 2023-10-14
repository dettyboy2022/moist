import 'package:flutter/material.dart';
import 'package:moistwears/presentation/view/cart/addtocart.dart';

import '../../../../constants/gridview.dart';
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
        childAspectRatio: 1 / 2.2,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final selectedItem = recommend[index];
        return GridCard(
          image: selectedItem.image,
          title: selectedItem.title,
          design: selectedItem.design,
          price: selectedItem.price,
          slashed: selectedItem.slashed,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddToCart(
                  itemdetails: selectedItem,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
