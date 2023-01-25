
import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
      //TODO: borrar home
      // MenuOption(name: 'Home Screen', screen: const HomeScreen(), route: 'home', icon: Icons.home_filled  ),
      MenuOption(name: 'Listview Tipo 1', screen: const Listview1Screen(), route: 'listview1', icon: Icons.list_alt_rounded ),
      MenuOption(name: 'Listview Tipo 2', screen: const Listview2Screen(), route: 'listview2', icon: Icons.list ),
      MenuOption(name: 'Alertas - Alerts', screen: const AlertScreen(), route: 'alert', icon: Icons.alarm ),
      MenuOption(name: 'Tarjetas - Cards', screen: const CardScreen(), route: 'card', icon: Icons.credit_card_rounded ),
      MenuOption(name: 'Circle Avatar', screen: const AvartarScreen(), route: 'avatar', icon: Icons.supervised_user_circle_outlined ),
      MenuOption(name: 'Animated Container', screen: const AnimatedScreen(), route: 'animated', icon: Icons.play_circle_outline_rounded),
      MenuOption(name: 'Texts Inputs', screen: const InputsScreen(), route: 'inputs', icon: Icons.input_rounded),
      MenuOption(name: 'Slider and Checks', screen: const SliderScreen(), route: 'slider', icon: Icons.slow_motion_video_outlined),
      MenuOption(name: 'InfiniteScrol & pull to refresh', screen: const ListViewBuilderScreen(), route: 'listviewbuilder', icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes ={};
    appRoutes.addAll({'home' :( BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route :( BuildContext context) => option.screen});
      
    }
    return appRoutes;
  }
  
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'      :( BuildContext context) => const HomeScreen(),
  //       'listview1' :( BuildContext context) => const Listview1Screen(),
  //       'listview2' :( BuildContext context) => const Listview2Screen(),
  //       'alert'     :( BuildContext context) => const AlertScreen(),
  //       'card'      :( BuildContext context) => const CardScreen(),
  //     };
  
  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      }
}