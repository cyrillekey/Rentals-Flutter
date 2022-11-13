import 'package:chekikeja/screens/browse_homes.dart';
import 'package:chekikeja/screens/favourites_homes.dart';
import 'package:chekikeja/screens/home_screen.dart';
import 'package:chekikeja/screens/search_homes.dart';
import 'package:chekikeja/screens/settings_screens.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key, required this.index});
  final int index;
  final List widgets = [
    const HomeScreen(),
    const SearchScreen(),
    const BrowseScreen(),
    const SettingsScreen()
  ];
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int currentSelection;
  @override
  void initState() {
    super.initState();
    currentSelection = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          currentIndex: currentSelection,
          unselectedItemColor: Colors.grey.shade700,
          selectedItemColor: const Color.fromRGBO(63, 96, 158, 1),
          iconSize: 26,
          elevation: 1,
          onTap: (value) {
            setState(() {
              currentSelection = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.home),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite),
                ),
                label: "Favourite"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.alarm),
                ),
                label: "Browse"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.swift),
                ),
                label: "Profile")
          ]),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: widget.widgets[currentSelection],
      ),
    );
  }
}
