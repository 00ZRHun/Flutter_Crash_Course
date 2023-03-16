import 'package:flutter/material.dart';

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
            Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                // color: Colors.red,
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset("images/rocket.png"),
                    const Text(
                      'Title',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('Description'),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/space.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/travel.png"),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                // color: Colors.red,
                width: double.infinity,
                child: Column(
                  children: [
                    Image.asset('images/yeah.png'),
                    const Text(
                      'title',
                    ),
                    const Text('description'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
