import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moistwears/constants/custombar.dart';
import 'package:moistwears/constants/elevatedbutton.dart';
import 'package:moistwears/controllers/addtocart_provider.dart';
import 'package:moistwears/controllers/counter_provider.dart';
import 'package:moistwears/presentation/view/cart/address/address.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final items = context.watch<CartNotifier>().items;
    double totalPrice = Provider.of<CartNotifier>(context).totalPrice;
    double totalDelivery = Provider.of<CartNotifier>(context).totalDelivery;
    double delivery = 2000;

    return Scaffold(
      appBar: const CustomAppBar(title: 'Cart'),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.55,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 5,
                              child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: Image.asset(items[index].image))),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index].title,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '\$${items[index].slashed.toString()}',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              Provider.of<CounterNotifier>(
                                                      context,
                                                      listen: false)
                                                  .increment();
                                            },
                                            icon: const Icon(Icons.add_circle)),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Consumer<CounterNotifier>(builder:
                                            (context, counterNotifier, child) {
                                          return Text(
                                            '${counterNotifier.count}',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          );
                                        }),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              if (context
                                                      .read<CounterNotifier>()
                                                      .count >
                                                  1) {
                                                context
                                                    .read<CounterNotifier>()
                                                    .decrement();
                                              } else {}
                                            },
                                            icon: const Icon(
                                                Icons.remove_circle)),
                                      ],
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          showSnack();
                                          Provider.of<CartNotifier>(context,
                                                  listen: false)
                                              .removeFromCart(items[index]);
                                        },
                                        icon: const Icon(Iconsax.trash))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total:',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade500),
                    ),
                    Text(
                      '\$${totalPrice.toString()}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700),
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
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade500),
                    ),
                    Text(
                      '\$$delivery',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const Divider(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total:',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade500),
                    ),
                    Text(
                      '\$${totalDelivery.toString()}',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700),
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
            )
          ],
        ),
      ),
    );
  }

  showSnack() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.black,
        duration: Duration(milliseconds: 1000),
        content: Text(
          'Item removed from Cart',
          style: TextStyle(color: Colors.white),
        )));
  }
}
