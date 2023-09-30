import 'package:flutter/material.dart';

class HomeRow extends StatefulWidget {
  const HomeRow({super.key});

  @override
  State<HomeRow> createState() => _HomeRowState();
}

List categories = [
  {'image': 'assets/beauty.png'},
  {'image': 'assets/curve.png'},
  {'image': 'assets/kids.png'},
  {'image': 'assets/men.png'},
  {'image': 'assets/plus.png'},
  {'image': 'assets/women.png'},
];

class _HomeRowState extends State<HomeRow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: categories
              .map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        e['image'],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ))
              .toList()),
    );
  }
}
