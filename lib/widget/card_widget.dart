import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/constant.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(kDouble10),
        // color: Colors.red,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: kDouble5),
            Image.asset(imagePath),
            const Text(
              'Title',
              style: TextStyle(
                fontSize: kDouble20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('This is a description'),
            const SizedBox(height: kDouble10)
          ],
        ),
      ),
    );
  }
}
