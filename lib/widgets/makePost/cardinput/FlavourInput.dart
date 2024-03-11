// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FlavourInput extends StatelessWidget {
  const FlavourInput({
    super.key,
    required this.flavourController,
  });

  final TextEditingController flavourController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        children: [
          Text(
            "Flavour:",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 6), // Add spacing between caption and field
          Expanded(
            child: TextField(
              controller: flavourController, // Assign the controller
              style: TextStyle(color: Colors.white), // Set text color
              decoration: InputDecoration(
                hintText: "Enter caption...", // Optional hint text
                border: InputBorder.none, // Remove default border (optional)
              ),
            ),
          ),
        ],
      ),
    );
  }
}






