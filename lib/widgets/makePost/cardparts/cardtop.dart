// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardTop extends StatelessWidget {
  const CardTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.location_on_outlined, color: Colors.white),
          SizedBox(width: 4),
          Text(
            'Eindhoven - 7°c',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}