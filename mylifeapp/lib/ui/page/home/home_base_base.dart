import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/icons_config.dart';
import 'package:mylifeapp/core/locale/app_localizations.dart';
//import 'package:mylifeapp/ui/components/appbar_components.dart';
import 'package:mylifeapp/ui/page/Settings/settings_page.dart';
import 'package:mylifeapp/ui/page/fitness/fitness_page.dart';
import 'package:mylifeapp/ui/page/home/home_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeBasePage extends StatefulWidget {
  const HomeBasePage({super.key});

  @override
  State<HomeBasePage> createState() => _HomeBasePageState();
}

class _HomeBasePageState extends State<HomeBasePage> {
  var idex = 0;
  final _pages = [HomePage(), FitnessPage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      //appBar: MyAppBar(name: 'Marcelo Alves'),
      body: _pages[idex],
      bottomNavigationBar: SalomonBottomBar(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        currentIndex: idex,
        onTap: (i) {
          setState(() {
            idex = i;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(AppIcons.home),
            title: Text(AppLocalizations.of(context)!.homeScreenTitle),
            selectedColor: Theme.of(context).colorScheme.onSurface,
          ),
          SalomonBottomBarItem(
            icon: Icon(AppIcons.fitness),
            title: Text('Treinos'),
            selectedColor: Theme.of(context).colorScheme.onSurface,
          ),
          SalomonBottomBarItem(
            icon: Icon(AppIcons.profile),
            title: Text(AppLocalizations.of(context)!.settingsScreenTitle),
            selectedColor: Theme.of(context).colorScheme.onSurface,
          ),
        ],
      ),
    );
  }
}
