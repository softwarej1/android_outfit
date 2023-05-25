import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final String menuimage;

  const ItemMenu({super.key, required this.menuimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 113,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Image.asset(
          menuimage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
