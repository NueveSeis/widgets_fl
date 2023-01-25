

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      // barrierDismissible: true,
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          
          title: const Text('titulo'),
          content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Este es el contenido de la alert'),
            SizedBox(height: 10,),
            FlutterLogo(size: 100)
          ],
        ),
        actions: [
          TextButton(
          onPressed: ()=> Navigator.pop(context),
          child: const Text('Cancelar', style: TextStyle(color: Colors.red),),
          ),
          TextButton(
          onPressed: ()=> Navigator.pop(context),
          child: const Text('Ok',style: TextStyle(color: Colors.blue)),
          )
        ],

        );
      }
      );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
    // barrierDismissible: true,
    context: context, 
    builder: (context) {
      return AlertDialog(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: const Text('titulo'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Este es el contenido de la alert'),
            SizedBox(height: 10,),
            FlutterLogo(size: 100)
          ],
        ),
        actions: [
          TextButton(
          onPressed: ()=> Navigator.pop(context),
          child: const Text('Cancelar'),
          )
        ],
      );
    }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.red,
              //   shape: const StadiumBorder(),
              //   elevation: 
              // ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: Text('Mostrar Alerta IOS', style: TextStyle(fontSize: 15),),
              ),
              onPressed: () => displayDialogIOS(context)
              //Platform.isAndroid
              // ? displayDialogAndroid(context)
              // : displayDialogIOS(context)
              ),
              const SizedBox(height: 15,),
              ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.red,
              //   shape: const StadiumBorder(),
              //   elevation: 
              // ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: Text('Mostrar Alerta Android', style: TextStyle(fontSize: 15),),
              ),
              onPressed: () => displayDialogAndroid(context)
              // Platform.isAndroid
              // ? displayDialogAndroid(context)
              // : displayDialogIOS(context)
              ),
           ],
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        }
        ),
    );
  }
}