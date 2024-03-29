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
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: price.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                mainAxisExtent: 50,
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: const BorderSide(color: Colors.black),
                                  shape: const RoundedRectangleBorder()),
                              onPressed: () {},
                              child: Text(
                                price[index],
                                style: const TextStyle(color: Colors.black),
                              ));
                          // return Container(
                          //   decoration: BoxDecoration(border: Border.all()),
                          //   child: Text(price[index].toString()),
                          // );
                        })
                    // body: GridView.builder(
                    //     shrinkWrap: true,
                    //     itemCount: price.length,
                    //     gridDelegate:
                    //         const SliverGridDelegateWithFixedCrossAxisCount(
                    //             mainAxisSpacing: 10,
                    //             crossAxisSpacing: 10,
                    //             crossAxisCount: 3),
                    //     itemBuilder: (_, i) {
                    //       return RawChip(
                    //           padding: EdgeInsets.zero,
                    //           label: Text(price[i].toString()));
                    //     })
                    // body: GridView.builder(
                    //     padding: EdgeInsets.zero,
                    //     shrinkWrap: true,
                    //     itemCount: price.length,
                    //     gridDelegate:
                    //         const SliverGridDelegateWithFixedCrossAxisCount(
                    //             // mainAxisExtent: 50,
                    //             crossAxisSpacing: 10,
                    //             mainAxisSpacing: 10,
                    //             crossAxisCount: 3),
                    //     itemBuilder: (context, index) {
                    //       return Container(
                    //         // height: 50,
                    //         // width: 150,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10),
                    //           border: Border.all(),
                    //         ),
                    //         child: Center(child: Text(price[index])),
                    //       );
                    //     })
                    ),
                ExpansionPanelRadio(
                    canTapOnHeader: true,
                    value: 2,
                    headerBuilder: (context, isExpanded) {
                      return const Text('Color',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400));
                    },
                    body: GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: colors.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                        padding: EdgeInsets.zero,
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
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: products.length,
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
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: available.length,
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
                            child: Center(child: Text(available[index])),
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
