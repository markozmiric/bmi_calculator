import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final VoidCallback? function;

  const ReusableContainer(
      {super.key,
      this.child,
      this.color = const Color(0xFF424242),
      this.function});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: function,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
