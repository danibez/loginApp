import 'package:flutter/material.dart';
import 'package:flutter_application_1/tabs/homeList.dart';
import 'package:flutter_application_1/tabs/homeTab.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 2,
    child:
    Scaffold(
      drawer: Drawer(
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
      ),
      appBar: AppBar(
        bottom: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.list),
              text: "Opções",
            )
          ]
        ),
        centerTitle: true,
        title: const Text("Compra Fácil",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue
      ),
      body: const TabBarView(
        children: [
          homeTab(),
          homeList()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.face),label: "Face"),
        BottomNavigationBarItem(icon: Icon(Icons.telegram), label: "Telegram")
      ]),
    ));
  }

}