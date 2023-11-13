import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';
import 'package:moistwears/presentation/models/beauty_model.dart';
import 'package:moistwears/presentation/view/cart/categories_cart/beauty_cart.dart';
import '../../../../constants/gridview.dart';

class BeautyItems extends StatelessWidget {
  const BeautyItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Beauty'),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: beautymodel.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 2.2,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final selectedbeauty = beautymodel[index];
                return GridCard(
                  image: selectedbeauty.image,
                  title: selectedbeauty.title,
                  design: selectedbeauty.design,
                  price: selectedbeauty.price,
                  slashed: selectedbeauty.slashed,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BeautyCart(
                          beautydetails: selectedbeauty,
                        ),
                      ),
                    );
                  },
                );
              },
            )));
  }
}
