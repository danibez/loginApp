import 'package:flutter/material.dart';
import 'package:flutter_application_1/myDrawer.dart';
import 'package:flutter_application_1/tabs/homeList.dart';
import 'package:flutter_application_1/tabs/homeTab.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  late ScrollController _scrollController;
  bool _isAppBarExpanded = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        _isAppBarExpanded = _scrollController.hasClients &&
            _scrollController.offset < kToolbarHeight;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
    child: Scaffold(
        drawer: const Mydrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Compra Fácil",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          bottom: const TabBar(tabs: [Tab(icon: const Icon(Icons.tab)),
          Tab(icon: Icon(Icons.face),)
          ])),
      body: 
      const TabBarView(
        children: [
          homeTab(),
          homeList()
        ],
      ),
      
    ));
  }
}