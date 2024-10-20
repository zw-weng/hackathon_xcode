import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/resources_screen.dart';
import 'screens/tutoring_screen.dart';
import 'screens/profile_screen.dart';
import 'navigation.dart';  // Import the navigation bar

final GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => ScaffoldWithBottomNavBar(
        body: const HomeScreen(),  // Pass HomeScreen as the body
      ),
    ),
    GoRoute(
      path: '/resources',
      name: 'resources',
      builder: (context, state) => ScaffoldWithBottomNavBar(
        body: const ResourcesScreen(),  // Pass ResourcesScreen as the body
      ),
    ),
    GoRoute(
      path: '/tutoring',
      name: 'tutoring',
      builder: (context, state) => ScaffoldWithBottomNavBar(
        body: const TutoringScreen(),  // Pass TutoringScreen as the body
      ),
    ),
    GoRoute(
      path: '/profile',
      name: 'profile',
      builder: (context, state) => ScaffoldWithBottomNavBar(
        body: const ProfileScreen(),  // Pass ProfileScreen as the body
      ),
    ),
  ],
);
