import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/constants/custombar.dart';
import 'package:moistwears/constants/elevatedbutton.dart';
import 'package:moistwears/presentation/view/cart/address/address.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Cart'),
        body: Padding(
          padding:
              const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 100),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200,
                          ),
                          child: Image.asset('assets/png/lady.png'))),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'More Of Me Mesh Skirt Set - Turquoise',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '#40,000',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.add_circle),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.remove_circle)
                              ],
                            ),
                            Icon(
                              Iconsax.trash,
                              color: Colors.red,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub Total:',
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade500),
                  ),
                  const Text(
                    '#40,000',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Fee:',
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade500),
                  ),
                  const Text(
                    '#2,000',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              const Divider(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade500),
                  ),
                  const Text(
                    '#42,000',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )
                ],
              ),
              CustomElevated(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Address()));
                  },
                  color: Colors.black,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Checkout',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Iconsax.card,
                        color: Colors.white,
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
