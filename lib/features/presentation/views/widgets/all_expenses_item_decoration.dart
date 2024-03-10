
import 'package:flutter/material.dart';

class AllExpensesItemDecoration extends StatelessWidget {
  const AllExpensesItemDecoration({
    super.key,
    required this.child, required this.color
  });

  final Widget child ;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 12),
      width: 180,
      padding: const EdgeInsets.all(12),
      decoration:  ShapeDecoration(
        color: color,
        shape: const RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: child
    );
  }
}

