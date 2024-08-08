import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health_app/features/meditation/presentation/pages/meditation_screen.dart';
import 'package:mental_health_app/features/presentation/bottomNavBar/navigation/navigation_bloc.dart';
import 'package:mental_health_app/features/presentation/home/home_screen.dart';

import 'core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => NavigationBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        home: HomeScreen(),
      ),
    );
  }
}
