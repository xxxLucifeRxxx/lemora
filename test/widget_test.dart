import 'package:flutter_test/flutter_test.dart';
import 'package:lemora/app/app.dart';
import 'package:lemora/app/dependencies/app_dependencies.dart';
import 'package:lemora/app/dependencies/app_dependencies_scope.dart';
import 'package:talker/talker.dart';

void main() {
  testWidgets('Отображает стартовый экран Lemora', (tester) async {
    await tester.pumpWidget(
      AppDependenciesScope(
        dependencies: AppDependencies(
          talker: Talker(settings: TalkerSettings(enabled: false)),
        ),
        child: const LemoraApp(),
      ),
    );

    expect(find.text('Lemora'), findsOneWidget);
    expect(find.text('Remember words. Use them naturally.'), findsOneWidget);
  });
}
