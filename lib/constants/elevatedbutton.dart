import 'package:flutter/material.dart';

class CustomElevated extends StatelessWidget {
  const CustomElevated({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        backgroundColor: color,
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
