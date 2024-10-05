import 'package:flutter/material.dart';

class homeList extends StatefulWidget {
  const homeList({super.key});

  @override
  State<homeList> createState() => _homeListState();
}

class _homeListState extends State<homeList> {
  late TextEditingController myControl;
  late List<Text> myList;

  @override
  void initState() {
    super.initState();
    myControl = TextEditingController();
    myList = [];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: myControl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Insira um novo item',
              ),
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                myList.add(Text(myControl.text));
              });
            }, child: const Text("Add")),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child:
            ListView.builder(
              shrinkWrap: true,
              itemCount: myList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: myList[index],
                );
              },
            ))
          ],
        ));
  }
}
