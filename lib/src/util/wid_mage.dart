import 'package:flutter/material.dart';

class WidMage extends StatelessWidget {

  final Widget child;
  const WidMage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: child,
    );
  }
}
