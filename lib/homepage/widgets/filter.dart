import 'package:flutter/material.dart';

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
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Filter',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
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
                        itemCount: 5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 50,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: const Center(child: Text('Select')),
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
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                crossAxisCount: 6),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.yellow,
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
                        itemCount: 5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 50,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: const Center(child: Text('Select')),
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
                                crossAxisCount: 5),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: const Center(child: Text('Select')),
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
                            child: const Center(child: Text('Select')),
                          );
                        })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
