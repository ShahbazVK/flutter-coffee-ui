import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  const CoffeeType(
      {Key? key, required this.coffeeType, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Text(
        coffeeType,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.orange : Colors.white,
        ),
      ),
    );
  }
}
