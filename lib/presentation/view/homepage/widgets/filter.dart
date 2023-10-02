import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Filter'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ExpansionPanelList.radio(
              dividerColor: Colors.transparent,
              elevation: 0,
              expandedHeaderPadding: const EdgeInsets.all(8),
              children: [
                ExpansionPanelRadio(
                    value: 1,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return const Text(
                        'Price',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      );
                    },
                    body: GridView.builder(
                        shrinkWrap: true,
                        itemCount: price.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 50,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: Center(child: Text(price[index])),
                          );
                        })),
                ExpansionPanelRadio(
                    canTapOnHeader: true,
                    value: 2,
                    headerBuilder: (context, isExpanded) {
                      return const Text('Color',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400));
                    },
                    body: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 50,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                crossAxisCount: 5),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colors[index],
                            ),
                          );
                        })),
                ExpansionPanelRadio(
                    canTapOnHeader: true,
                    value: 3,
                    headerBuilder: (context, isExpanded) {
                      return const Text('Customer Reviews',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400));
                    },
                    body: GridView.builder(
                        shrinkWrap: true,
                        itemCount: reviews.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 50,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return Wrap(
                            children: [Image.asset(reviews[index])],
                          );
                        })),
                ExpansionPanelRadio(
                    canTapOnHeader: true,
                    value: 4,
                    headerBuilder: (context, isExpanded) {
                      return const Text('Product',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400));
                    },
                    body: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 13,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 50,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: Center(child: Text(products[index])),
                          );
                        })),
                ExpansionPanelRadio(
                    canTapOnHeader: true,
                    value: 5,
                    headerBuilder: (context, isExpanded) {
                      return const Text('Availability',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400));
                    },
                    body: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 50,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: Center(child: Text(products[index])),
                          );
                        })),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List price = [
    '#0 - #10,000',
    '#11,000 - #50,000',
    '#51,000 - #100,000',
    '#101,500 - #500,000',
    '#510,000 - #1,000,000',
  ];

  List colors = [
    Colors.red,
    Colors.yellow,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.grey,
    Colors.brown,
    Colors.amber,
    Colors.teal,
    Colors.cyan,
  ];

  List reviews = [
    'assets/png/star5.png',
    'assets/png/star4.png',
    'assets/png/star3.png',
    'assets/png/star2.png',
    'assets/png/star1.png',
  ];

  List products = [
    'Bags',
    'Bodysuits',
    'Dresses',
    'jumpsuits',
    'Shoes',
    'Jacket',
    'Skirts',
    'Knickers',
    'T-Shirts',
    'Trousers',
    'Shorts',
    'Sandals',
    'Jeans',
  ];

  List available = [
    'All Deals',
    'Available',
    'Unavailable',
    'Upcoming',
    'Watchlist',
  ];
}
