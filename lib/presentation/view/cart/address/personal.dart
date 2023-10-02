import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';
import 'package:moistwears/constants/elevatedbutton.dart';
import 'package:moistwears/presentation/view/cart/address/card.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Address'),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 80),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Personal Address',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Charles Ayomide'),
                  Text('Lagos, Nigeria'),
                  Text('No 4, surulere Lagos'),
                  Text('+2349020551592')
                ],
              ),
            ),
            const Spacer(),
            CustomElevated(
                onPressed: () {
                  showBottom(context);
                },
                color: Colors.black,
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  void showBottom(BuildContext context) async {
    await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
        context: context,
        builder: (context) {
          return SizedBox(
            height: 350,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  margin: const EdgeInsets.only(top: 10),
                  height: 5,
                  width: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Select a Payment Method',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                ListView.builder(
                    padding: const EdgeInsets.all(15),
                    shrinkWrap: true,
                    itemCount: payments.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EnterCard()));
                          },
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey.shade400)),
                            leading: Image.asset(payments[index]['image']),
                            title: Text(payments[index]['method']),
                            trailing: const Icon(Icons.navigate_next),
                          ),
                        ),
                      );
                    })
              ],
            ),
          );
        });
  }

  List payments = [
    {'image': 'assets/png/visacard.png', 'method': 'Visa Card'},
    {'image': 'assets/png/bank.png', 'method': 'Bank'},
    {'image': 'assets/png/Mastercard.png', 'method': 'MasterCard'},
  ];
}
