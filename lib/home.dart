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
    return 
    Scaffold(
      drawer: const Mydrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Compra Fácil",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.abc))
            ],
            // leading: IconButton(onPressed: (){}, icon: const Icon(Icons.person)),
            backgroundColor: Colors.blueGrey,
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: _isAppBarExpanded
                  ? const Text("Olá, Fulano!") // Only show title when expanded
                  : null, // Hide title when collapsed
            ),
          ),
          // const SliverFillRemaining(
          //   child: TabBarView(
          //     children: [
          //       homeTab(),
          //       homeList()
          //     ],)
          // )
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child:
                        Text('$index', textScaler: const TextScaler.linear(5)),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ]
      // const TabBarView(
      //   children: [
      //     homeTab(),
      //     homeList()
      //   ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('pinned'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _pinned = val;
                      });
                    },
                    value: _pinned,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('snap'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _snap = val;
                        // Snapping only applies when the app bar is floating.
                        _floating = _floating || _snap;
                      });
                    },
                    value: _snap,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('floating'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _floating = val;
                        _snap = _snap && _floating;
                      });
                    },
                    value: _floating,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.face),label: "Face"),
      //   BottomNavigationBarItem(icon: Icon(Icons.telegram), label: "Telegram")
      // ]),
    );
  }
}