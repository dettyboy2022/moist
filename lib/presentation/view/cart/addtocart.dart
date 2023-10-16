import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/controllers/addtocart_provider.dart';
import 'package:moistwears/presentation/models/recommended_model.dart';
import 'package:provider/provider.dart';

import '../../../constants/elevatedbutton.dart';

class AddToCart extends StatefulWidget {
  final Items itemdetails;
  const AddToCart({super.key, required this.itemdetails});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
      ),
      body: ListView(
        children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey.shade400),
              height: MediaQuery.of(context).size.width * 1.2,
              child: PageView.builder(
                itemCount: 4,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Image.asset(
                    widget.itemdetails.image,
                    fit: BoxFit.contain,
                  );
                },
              ),
            ),
            Positioned(
                bottom: 50,
                right: 0,
                left: 0,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        4,
                        (index) => Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: index == currentIndex
                                      ? Colors.grey.shade800
                                      : Colors.white),
                              height: 10,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 10,
                            )),
                  ),
                )),
          ]),
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
                    const Text(
                      '(100)',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '\$${widget.itemdetails.slashed}',
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
                    onPressed: () {
                      showSnack();
                      context.read<CartNotifier>().add(recommend[2]);
                      // .add(Items(
                      //     image: 'image',
                      //     title: 'title',
                      //     design: 'design',
                      //     price: 1,
                      //     slashed: 2)
                      //     );
                      // Provider.of<CartNotifier>(context, listen: false).add(
                      //     Items(
                      //         image: '',
                      //         title: '',
                      //         design: 'design',
                      //         price: 1,
                      //         slashed: 2));
                    },
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

  showSnack() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(milliseconds: 1000),
        content: Text(
          'Item Added to Cart',
          style: TextStyle(color: Colors.white),
        )));
  }
}
