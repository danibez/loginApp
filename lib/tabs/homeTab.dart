import 'package:flutter/material.dart';

class homeTab extends StatelessWidget {
  const homeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
            child: const Text("Promoções de Hoje",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                  fontStyle: FontStyle.italic,
                ))),
        const Card(
          color: Colors.white60,
          child: Column(
            children: [
              ListTile(
                leading:
                    Image(image: AssetImage('assets/images/detergente.jpeg')),
                title: Text('Detergente'),
                subtitle: Text('R\$ 9,00'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.share),
                  SizedBox(width: 8.0),
                  Icon(Icons.remove_red_eye),
                  SizedBox(width: 8.0),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
