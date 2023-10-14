import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';
import 'package:moistwears/presentation/models/kids_model.dart';

import '../../../../constants/gridview.dart';

class KidsItem extends StatelessWidget {
  const KidsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Kids'),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: kidsmodel.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 2.2,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final selectedkids = kidsmodel[index];
                return GridCard(
                  image: selectedkids.image,
                  title: selectedkids.title,
                  design: selectedkids.design,
                  price: selectedkids.price,
                  slashed: selectedkids.slashed,
                  onTap: () {},
                );
              },
            )));
  }
}
