import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark.withOpacity(0.9),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 18),
        child: GNav(
          gap: 8,
          color: Theme.of(context).primaryColorDark.withOpacity(0.9),
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          padding: const EdgeInsets.all(14),
          onTabChange: (index) {},
          tabs: const [
            GButton(
              icon: Icons.home_filled,
              iconColor: Colors.white,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border_outlined,
              iconColor: Colors.white,
              text: 'Favourites',
            ),
            GButton(
              icon: Icons.settings,
              iconColor: Colors.white,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
