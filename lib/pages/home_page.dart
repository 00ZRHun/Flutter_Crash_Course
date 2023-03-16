import 'package:flutter/material.dart';
import 'package:flutter_youtube/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CardWidget(),
            Row(
              children: const [
                Expanded(
                  child: CardWidget(),
                ),
                Expanded(
                  child: CardWidget(),
                ),
              ],
            ),
            const CardWidget(),
          ],
        ),
      ),
    );
  }
}
