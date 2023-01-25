import 'package:flutter/material.dart';

class AvartarScreen extends StatelessWidget {
   
  const AvartarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       title: const Text('Kevin Ivan'),
       actions: [
        Container(
          margin: const EdgeInsets.only(right: 5),// separacion externa, padding separacion interna ejemplo boton
          child: const CircleAvatar(
            child: Text('KI'),
            backgroundColor: Colors.deepOrangeAccent,
          ),
        )
       ],
       ),

      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://sites.google.com/site/eiminight/_/rsrc/1307811500745/bart-simpson/Bart-Simpson.jpg?height=320&width=256'),
         ),
      ),
    );
  }
}