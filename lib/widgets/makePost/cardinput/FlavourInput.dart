// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

const List<String> list = <String>['Tomaat', 'Champignon', 'Erwrt', 'Kip'];

class FlavourInput extends StatelessWidget {
  const FlavourInput({
    super.key,
    required this.flavourController,
  });

  final TextEditingController flavourController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10),
            child: FlavourDropdown(
              items: list,
              labelText: 'Flavour',
              onSelected: (String? icon) {},
            )),
        Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10),
            child: DropdownMenuExample()),
      ],
    );
  }
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: DropdownMenu<String>(
            label: const Text('Flavour', style: TextStyle(color: Colors.white)),
            textStyle: TextStyle(
              color: Colors.white,
            ),
            initialSelection: list.first,
            onSelected: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            dropdownMenuEntries:
                list.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class FlavourDropdown extends StatefulWidget {
  final List<String> items;
  final String labelText;
  final Function(String? flavour) onSelected;

  const FlavourDropdown({
    super.key,
    required this.items,
    required this.labelText,
    required this.onSelected,
  });

  @override
  State<FlavourDropdown> createState() => _FlavourDropdownState();
}

class _FlavourDropdownState extends State<FlavourDropdown> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: SizedBox(
            width: 200,
            child: DropdownButton<String>(
              value: selectedItem,
              icon: const Icon(Icons.arrow_drop_down), // Add dropdown icon
              // dropdownColor: Colors.grey[800], // Set dropdown menu color (optional)
              isExpanded: true, // Expand dropdown to full width (optional)
              style: const TextStyle(
                  color: Colors.white), // Set dropdown text style
              underline: Container(
                height: 1,
                color: Colors.white, // Set underline color (optional)
              ),
              hint: Text(widget.labelText,
                  style: const TextStyle(color: Colors.white)),
              onChanged: (String? value) {
                setState(() {
                  selectedItem = value;
                });
                widget.onSelected(value);
              },
              items: widget.items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      color:
                          value == selectedItem ? Colors.white : Colors.black,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
