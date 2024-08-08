import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health_app/features/presentation/bottomNavBar/navigation/navigation_bloc.dart';
import 'package:mental_health_app/features/presentation/bottomNavBar/navigation/navigation_event.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final List<BottomNavigationBarItem> items;

  const BottomNavBar(
      {super.key, required this.currentIndex, required this.items});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      currentIndex: currentIndex,
      onTap: (index) {
        context.read<NavigationBloc>().add(NavigateTo(index: index));
      },
    );
  }
}
