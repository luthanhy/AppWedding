import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_button.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String text;
  final String? imageUrl;
  final List<MyButton> buttons;

  const MyCard({
    Key? key,
    required this.title,
    required this.text,
    this.imageUrl,
    required this.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imageUrl != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: NetworkImage(imageUrl!),
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          if (imageUrl != null) const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buttons.map((button) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: button,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
