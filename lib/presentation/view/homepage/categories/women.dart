import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';
import 'package:moistwears/presentation/models/women_model.dart';
import 'package:moistwears/presentation/view/cart/categories_cart/women_cart.dart';

import '../../../../constants/gridview.dart';

class WomenItems extends StatefulWidget {
  const WomenItems({super.key});

  @override
  State<WomenItems> createState() => _CategoriesState();
}

class _CategoriesState extends State<WomenItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Women'),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: womenmodel.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 2.2,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final selectedwomen = womenmodel[index];
                return GridCard(
                  image: selectedwomen.image,
                  title: selectedwomen.title,
                  design: selectedwomen.design,
                  price: selectedwomen.price,
                  slashed: selectedwomen.slashed,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WomenCart(
                          womendetails: selectedwomen,
                        ),
                      ),
                    );
                  },
                );
              },
            ))
            );
  }
}
