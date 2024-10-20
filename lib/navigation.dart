import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithBottomNavBar extends StatefulWidget {
  final Widget body;  // Screen content that will be passed from the route

  const ScaffoldWithBottomNavBar({required this.body, super.key});

  @override
  State<ScaffoldWithBottomNavBar> createState() => _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  int _selectedIndex = 0;

  // A list to map index to routes
  final List<String> _routes = [
    '/',
    '/resources',
    '/tutoring',
    '/profile',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate to the route based on the tapped index
    context.go(_routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.body,  // Display the passed screen content here
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          _buildNavItem(Icons.home, 'Home', 0),
          _buildNavItem(Icons.book, 'Resources', 1),
          _buildNavItem(Icons.person_pin_rounded, 'Tutoring', 2),
          _buildNavItem(Icons.person, 'Profile', 3),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,  // Blue color for selected icon
        unselectedItemColor: Colors.grey,  // Gray color for unselected icons
        type: BottomNavigationBarType.fixed,  // Ensure the labels are always visible
        onTap: _onItemTapped,  // Update index and navigate on tap
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: _selectedIndex == index
          ? Padding(
              padding: const EdgeInsets.all(8.0),  // Add padding for selected icon
              child: Icon(icon, size: 28, color: Colors.blueAccent),  // Larger size for selected icon
            )
          : Icon(icon, size: 24, color: Colors.grey),  // Regular size for unselected icon
      label: label,
    );
  }
}
