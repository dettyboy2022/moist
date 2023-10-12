import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';

class KidsItem extends StatelessWidget {
  const KidsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Kids'),
    );
  }
}
