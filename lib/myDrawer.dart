import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        UserAccountsDrawerHeader(
          // currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/25833050?v=4"),
          currentAccountPicture: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network("https://avatars.githubusercontent.com/u/25833050?v=4")),
          accountName: const Text("Fulano"),
          accountEmail: const Text("fulano@gmail.com")),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text("Home"),
          onTap: () {
              print("home");
            },
          ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text("Logout"),
          onTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
          )
      ],)
    );
  }
}