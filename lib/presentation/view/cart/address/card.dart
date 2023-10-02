import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';
import 'package:moistwears/constants/elevatedbutton.dart';
import 'package:moistwears/presentation/view/cart/checkout.dart';

class EnterCard extends StatefulWidget {
  const EnterCard({super.key});

  @override
  State<EnterCard> createState() => _EnterCardState();
}

class _EnterCardState extends State<EnterCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Visa'),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 80),
        child: ListView(
          children: [
            const Text(
              'Card Number',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    'assets/png/Mastercard.png',
                  ),
                  suffixIcon: Image.asset('assets/png/helpicon.png'),
                  border: const OutlineInputBorder(),
                  hintText: 'Card Number'),
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: cardDetails.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: cardDetails[index]),
                    ),
                  );
                }),
            const SizedBox(
              height: 80,
            ),
            CustomElevated(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Checkout()));
                },
                color: Colors.black,
                child: const Text(
                  'Pay',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  List cardDetails = ['Expiry Date', 'Card Holder Name', 'CVV'];
}
