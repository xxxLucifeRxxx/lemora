import 'package:flutter/material.dart';
import 'package:lemora/app/dependencies/app_dependencies_scope.dart';
import 'package:lemora/app/theme/app_theme.dart';
import 'package:lemora/features/home/presentation/home_screen.dart';
import 'package:talker_flutter/talker_flutter.dart';

class LemoraApp extends StatelessWidget {
  const LemoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dependencies = AppDependenciesScope.of(context);

    return MaterialApp(
      title: 'Lemora',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      navigatorObservers: [TalkerRouteObserver(dependencies.talker)],
      home: const HomeScreen(),
    );
  }
}
