
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Componentes en flutter'),
      
      ),
      body: ListView.separated(
      itemBuilder: (context, index) => ListTile(
        title: Text(AppRoutes.menuOptions[index].name),
        leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primario),
        onTap: (){

          // final route = MaterialPageRoute(builder: (context) => const Listview1Screen(),);
          // Navigator.push(context, route);
          Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
        },
      ),  
      separatorBuilder: (context, index) => const Divider() ,
      itemCount: AppRoutes.menuOptions.length,
      )
    );
  }
}