// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/makePost/cardinput/FlavourInput.dart';
import 'widgets/makePost/cardinput/captionInput.dart';
import 'widgets/makePost/cardparts/cardimage.dart';
import 'widgets/makePost/cardparts/cardtop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 69, 121, 55)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Container(
                // color: Theme.of(context).colorScheme.primary,
                // color: Theme.of(context).colorScheme.primaryContainer,
                color: const Color.fromARGB(255, 69, 121, 55),
                child: GeneratorPage(),
              ),
            ),
          ],
        ),
      );
    });
  }
}

// Content Homepage
class GeneratorPage extends StatelessWidget {
  const GeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Column(
      children: [
        CardExample(),
      ],
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: takenPictureCard(),
      ),
    );
  }
}

// ignore: camel_case_types
class takenPictureCard extends StatelessWidget {
  takenPictureCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Card(
        color: Color.fromARGB(255, 53, 94, 42),
        child: Column(
          children: <Widget>[CardTop(), CardImage(), CardInput()],
        ),
      ),
    );
  }
}

class CardInput extends StatelessWidget {
  const CardInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final captionController =
        TextEditingController(); // Create a TextEditingController

    final flavourController = TextEditingController();

    return Column(
      children: [
        CaptionInput(captionController: captionController),
        FlavourInput(flavourController: flavourController)
      ],
    );
  }
}
