import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';
import 'package:moistwears/presentation/models/curve_model.dart';

import '../../../../constants/gridview.dart';
import '../../cart/categories_cart/curve_cart.dart';

class CurveItems extends StatelessWidget {
  const CurveItems({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: 'Curve'),
       body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: curvemodel.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 2.2,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final selectedcurve = curvemodel[index];
                return GridCard(
                  image: selectedcurve.image,
                  title: selectedcurve.title,
                  design: selectedcurve.design,
                  price: selectedcurve.price,
                  slashed: selectedcurve.slashed,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CurveCart(
                          curvedetails: selectedcurve,
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
