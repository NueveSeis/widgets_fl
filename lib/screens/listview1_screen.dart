import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Megamen', 'Metal','Mario','Superman'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children:  [
          ...options.map(
            (game) => ListTile(
              title: Text('$game'),
              // leading: const Icon(Icons.access_alarms_sharp),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            ).toList()
          // ListTile(
          //   title: Text('Simon'),
          //   leading: Icon(Icons.ac_unit_outlined),
          // ),
        ],
      ),
    );
  }
}