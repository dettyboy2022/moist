import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Favourite'),
      body: Center(
        child: Text(
          'Favourite',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
