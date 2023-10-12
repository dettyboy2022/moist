import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';

class PlusItem extends StatelessWidget {
  const PlusItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Plus Women'),
    );
  }
}
