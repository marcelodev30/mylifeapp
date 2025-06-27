import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/icons_config.dart';
//import 'package:mylifeapp/ui/components/appbar_components.dart';
import 'package:mylifeapp/ui/page/Settings/settings_page.dart';
import 'package:mylifeapp/ui/page/fitness/fitness_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var idex = 0;
  final _pages = [
    Center(child: Text('Página Início')),
    FitnessPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), //MyAppBar(name: 'Marcelo Alves'),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: _pages[idex],
      ),
      bottomNavigationBar: SalomonBottomBar(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        currentIndex: idex,
        onTap: (i) {
          setState(() {
            idex = i;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(AppIcons.home),
            title: Text('Home'),
            selectedColor: Colors.white,
          ),
          SalomonBottomBarItem(
            icon: Icon(AppIcons.fitness),
            title: Text('Treinos'),
            selectedColor: Colors.white,
          ),
          SalomonBottomBarItem(
            icon: Icon(AppIcons.profile),
            title: Text('Profile'),
            selectedColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
