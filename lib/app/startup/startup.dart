import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:lemora/app/app.dart';
import 'package:lemora/app/dependencies/app_dependencies.dart';
import 'package:lemora/app/dependencies/app_dependencies_scope.dart';
import 'package:lemora/app/logging/app_bloc_observer.dart';
import 'package:talker_flutter/talker_flutter.dart';

Future<void> startup() async {
  final talker = TalkerFlutter.init();

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      FlutterError.onError = (details) {
        FlutterError.presentError(details);
        talker.handle(
          details.exception,
          details.stack,
          details.context?.toDescription(),
        );
      };

      PlatformDispatcher.instance.onError = (error, stackTrace) {
        talker.handle(error, stackTrace, 'Platform error');
        return true;
      };

      Bloc.observer = AppBlocObserver(talker);

      final dependencies = AppDependencies(talker: talker);

      talker.info('Lemora startup completed');

      runApp(
        AppDependenciesScope(
          dependencies: dependencies,
          child: const LemoraApp(),
        ),
      );
    },
    (error, stackTrace) {
      talker.handle(error, stackTrace, 'Uncaught zone error');
    },
  );
}
