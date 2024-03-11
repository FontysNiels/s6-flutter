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
    // final focusNode = FocusNode();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255))),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 172, 172, 172)),
              ),
              labelText: 'Give your post a caption',
              labelStyle: TextStyle(
                color:Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
              contentPadding: const EdgeInsets.only(top: 4.0),
            ),
            controller: captionController,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}



  //   return Padding(
  //     padding: const EdgeInsets.only(left: 15.0),
  //     child: Row(
  //       children: [
  //         Text(
  //           "Caption:",
  //           style: TextStyle(
  //             color: Colors.white,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         SizedBox(width: 6), // Add spacing between caption and field
  //         Expanded(
  //           child: TextField(
  //             controller: captionController, // Assign the controller
  //             style: TextStyle(color: Colors.white), // Set text color
  //             decoration: InputDecoration(
  //               hintText: "Enter caption...", // Optional hint text
  //               border: InputBorder.none, // Remove default border (optional)
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }