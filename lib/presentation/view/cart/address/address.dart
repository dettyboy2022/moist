import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';
import 'package:moistwears/presentation/view/cart/address/info.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Address',
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          TextField(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddressInfo()));
            },
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new address',
                suffixIcon: Icon(Icons.navigate_next)),
          )
        ],
      ),
    );
  }
}
