import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';

class MenItem extends StatelessWidget {
  const MenItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Men'),
    );
  }
}
