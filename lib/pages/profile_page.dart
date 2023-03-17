import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ), // OPT: child: Image.asset('images/yeah.png')
          SizedBox(
            height: kDouble20,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Flutter Mapp"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("info@fluttermapp.com"),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text("FlutterMapp.com"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
