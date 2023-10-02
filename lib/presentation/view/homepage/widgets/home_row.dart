import 'package:flutter/material.dart';

class HomeRow extends StatefulWidget {
  const HomeRow({super.key});

  @override
  State<HomeRow> createState() => _HomeRowState();
}

List categories = [
  {'image': 'assets/png/beauty.png', 'text': 'Beauty'},
  {'image': 'assets/png/curve.png', 'text': 'Curve'},
  {'image': 'assets/png/kids.png', 'text': 'Kids'},
  {'image': 'assets/png/men.png', 'text': 'Men'},
  {'image': 'assets/png/Plus.png', 'text': 'Plus'},
  {'image': 'assets/png/women.png', 'text': 'Women'},
];

class _HomeRowState extends State<HomeRow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: categories
              .map((e) => Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.asset(
                            e['image'],
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          e['text'],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ))
              .toList()),
    );
  }
}
