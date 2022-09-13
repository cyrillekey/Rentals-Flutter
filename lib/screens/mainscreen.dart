import 'package:chekikeja/screens/browse_homes.dart';
import 'package:chekikeja/screens/favourites_homes.dart';
import 'package:chekikeja/screens/home_screen.dart';
import 'package:chekikeja/screens/settings_screens.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key, required this.index});
  final int index;
  final List widgets = [
    const HomeScreen(),
    const BrowseScreen(),
    const FavouritesScreen(),
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
      bottomNavigationBar: FloatingNavbar(
        borderRadius: 36,
        selectedBackgroundColor: null,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade700,
        currentIndex: currentSelection,
        elevation: 0,
        iconSize: 28,
        padding: const EdgeInsets.symmetric(vertical: 12),
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
        onTap: (index) {
          setState(() {
            currentSelection = index;
          });
        },
        items: [
          FloatingNavbarItem(
            icon: FontAwesomeIcons.house,
          ),
          FloatingNavbarItem(icon: FontAwesomeIcons.gripfire),
          FloatingNavbarItem(icon: Icons.favorite),
          FloatingNavbarItem(icon: Icons.circle)
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: widget.widgets[currentSelection],
      ),
    );
  }
}
