import 'package:flutter/material.dart';
import 'package:mylifeapp/ui/components/appbar_components.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var idex=0;
  final _pages = [
    Center(child: Text('Página Início')),
    Center(child: Text('Página Treinos ')),
    Center(child: Text('Página Perfil')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: _pages[idex],
        bottomNavigationBar: 
        SalomonBottomBar(
          margin: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
          currentIndex: idex,
          onTap:(i){
            setState(() {
              idex = i;
            });
          },
          items: [
            SalomonBottomBarItem(icon: Icon(Icons.home), title: Text('Home'),selectedColor: Colors.white),
            SalomonBottomBarItem(icon: Icon(Icons.fitness_center), title: Text('Treinos'),selectedColor: Colors.white),
            SalomonBottomBarItem(icon: Icon(Icons.people), title: Text('Profile'),selectedColor: Colors.white),
            ]),
    );
  }
}