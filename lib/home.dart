import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 2,
    child:
    Scaffold(
      appBar: AppBar(
        bottom: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.baby_changing_station),
              text: "Bebê",
            )
          ]
        ),
        centerTitle: true,
        title: const Text("Minha Página",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue
      ),
      body: TabBarView(
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("Voltar Tab 1")),
          ),
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("Voltar Tab 2")),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.face),label: "Face"),
        BottomNavigationBarItem(icon: Icon(Icons.telegram), label: "Telegram")
      ]),
    ));
  }

}