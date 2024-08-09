import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health_app/features/meditation/presentation/pages/meditation_screen.dart';
import 'package:mental_health_app/features/music/presentation/pages/music_player_screen.dart';
import 'package:mental_health_app/features/music/presentation/pages/playlist_screen.dart';
import 'package:mental_health_app/features/presentation/bottomNavBar/navigation/navigation_bloc.dart';
import 'package:mental_health_app/features/presentation/bottomNavBar/navigation/navigation_state.dart';
import 'package:mental_health_app/features/presentation/bottomNavBar/widget/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> pages = [
    const MeditationScreen(),
    //MusicPlayerScreen(),
    PlaylistScreen(),
  ];

  BottomNavigationBarItem createBottomNavItem(
      {required String assetName,
      required bool isActive,
      required BuildContext context}) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          assetName,
          height: 45,
          color: isActive
              ? Theme.of(context).focusColor
              : Theme.of(context).primaryColor,
        ),
        label: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          log("STATE NAME: $state");
          if (state is NavigationChanged) {
            return pages[state.index];
          }
          return pages[0];
        },
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          int currentIndex = 0;
          if (state is NavigationChanged) {
            currentIndex = state.index;
          }

          final List<BottomNavigationBarItem> bottomNavItem = [
            createBottomNavItem(
                assetName: 'assets/images/menu_home.png',
                isActive: currentIndex == 0,
                context: context),
            createBottomNavItem(
                assetName: 'assets/images/menu_songs.png',
                isActive: currentIndex == 1,
                context: context),
          ];
          return BottomNavBar(
            currentIndex: currentIndex,
            items: bottomNavItem,
          );
        },
      ),
    );
  }
}
