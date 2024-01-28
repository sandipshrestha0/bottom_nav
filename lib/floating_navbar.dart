import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class FloatNavBar extends StatefulWidget {
  const FloatNavBar({super.key});

  @override
  State<FloatNavBar> createState() => _FloatNavBarState();
}

class _FloatNavBarState extends State<FloatNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Example'),
          ),
          //If you want to show body behind the navbar, it should be true
          extendBody: true,
          bottomNavigationBar: Container(
            height: 150.0,
            child: FloatingNavbar(
              onTap: (int val) {
                //returns tab id which is user tapped
              },
              currentIndex: 0,
              items: [
                FloatingNavbarItem(icon: Icons.home, title: 'Home'),
                FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
                FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
                FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
              ],
            ),
          ),
          
        );
  }
}