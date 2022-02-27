import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';

// ignore: constant_identifier_names
const IMAGES = [
  "destiny",
  "fc3",
  "game_4",
  "ghost",
  "mk11",
  "nfs",
  "pubg",
  "mk112"
];
final borderRadius = BorderRadius.circular(20.0);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swipe Deck',
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swipe Deck"),
      ),
      body: Center(
        child: SizedBox(
          width: 600,
          child: Center(
            child: SwipeDeck(
              startIndex: 3,
              emptyIndicator: const Center(
                child: Text("Nothing Here"),
              ),
              cardSpreadInDegrees: 6,
              onChange: (index) {
                log(IMAGES[index]);
              },
              widgets: IMAGES
                  .map((e) => GestureDetector(
                        onTap: () {
                          log(e);
                        },
                        child: ClipRRect(
                            borderRadius: borderRadius,
                            child: Image.asset(
                              "images/$e.jpg",
                              fit: BoxFit.cover,
                            )),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
