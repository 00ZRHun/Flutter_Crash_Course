import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constant.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Description Page'),
        // automaticallyImplyLeading: false,
        title: Text(widget.box.title),
        actions: [
          IconButton(
              onPressed: () => {
                    // const SnackBar(
                    //
                    // )
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("SnackBar"),
                      behavior: SnackBarBehavior.floating,
                      // duration: Duration(seconds: 4),   // default value
                    ))
                  },
              icon: const Icon(Icons.info))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: kDouble10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 25;
                      });
                    },
                    child: const Text("Small Title"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 35;
                      });
                    },
                    child: const Text("Medium Title"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 50;
                      });
                    },
                    child: const Text("Large Title"),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 200;
                      });
                    },
                    child: const Text("Huge Title"),
                  ),
                ],
              ),
              FittedBox(
                child: Text(widget.box.title,
                    style: TextStyle(
                      fontSize: fontSizeCustom,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const Text(
                baconDescription,
                style: TextStyle(
                  fontSize: kDouble20,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: kDouble10),
              const Text(
                baconDescription,
                style: TextStyle(
                  fontSize: kDouble20,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
