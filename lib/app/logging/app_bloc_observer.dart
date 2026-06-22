import 'package:bloc/bloc.dart';
import 'package:talker/talker.dart';

final class AppBlocObserver extends BlocObserver {
  const AppBlocObserver(this._talker);

  final Talker _talker;

  @override
  void onChange(BlocBase<Object?> bloc, Change<Object?> change) {
    if (bloc is! Bloc<Object?, Object?>) {
      _talker.debug(
        '${bloc.runtimeType}: ${change.currentState.runtimeType} -> '
        '${change.nextState.runtimeType}',
      );
    }

    super.onChange(bloc, change);
  }

  @override
  void onTransition(
    Bloc<Object?, Object?> bloc,
    Transition<Object?, Object?> transition,
  ) {
    _talker.debug(
      '${bloc.runtimeType} ${transition.event.runtimeType}: '
      '${transition.currentState.runtimeType} -> '
      '${transition.nextState.runtimeType}',
    );

    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase<Object?> bloc, Object error, StackTrace stackTrace) {
    _talker.handle(error, stackTrace, '${bloc.runtimeType} error');

    super.onError(bloc, error, stackTrace);
  }
}
