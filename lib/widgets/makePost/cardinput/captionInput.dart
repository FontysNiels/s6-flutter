// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CaptionInput extends StatelessWidget {
  const CaptionInput({
    super.key,
    required this.captionController,
  });

  final TextEditingController captionController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        children: [
          Text(
            "Caption:",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 6), // Add spacing between caption and field
          Expanded(
            child: TextField(
              controller: captionController, // Assign the controller
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