
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        shape: BoxShape.circle ,
        color:  Color.fromARGB(255, 247, 233, 233)
      ),
      child: const Center(child: Icon(Icons.add)),
    );
  }
}