import 'package:flutter/material.dart';

class ItemNameView extends StatelessWidget {
  const ItemNameView({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        name,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(color: Colors.pink, offset: Offset(0, 3), blurRadius: 10)
            ]),
      ),
    );
  }
}
