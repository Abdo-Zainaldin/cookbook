import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/settings/i_settings_repository.dart';
import '../../../domain/settings/settings.dart';
import '../../../domain/settings/settings_failure.dart';

part 'settings_watcher_event.dart';
part 'settings_watcher_state.dart';
part 'settings_watcher_bloc.freezed.dart';

@injectable
class SettingsWatcherBloc
    extends Bloc<SettingsWatcherEvent, SettingsWatcherState> {
  final ISettingsRepository _settingsRepository;

  StreamSubscription<Either<SettingsFailure, Settings>>?
      settingsStreamSubscription;

  SettingsWatcherBloc(
    this._settingsRepository,
  ) : super(const _Initial()) {
    on<WatchStarted>((event, emit) async {
      emit(const SettingsWatcherState.loadInProgress());

      // we initialize the DB here
      // because this is the first event that is add before performing anything in the DB
      await _settingsRepository.initLocalDB();

      await settingsStreamSubscription?.cancel();

      settingsStreamSubscription = _settingsRepository
          .watchAllSettings()
          .listen(
              (failureOrSettings) => add(SettingsChanged(failureOrSettings)));
    });

    on<SettingsChanged>((event, emit) {
      event.failureOrSettings.fold(
        (f) => emit(SettingsWatcherState.loadFailure(f)),
        (settings) => emit(SettingsWatcherState.loadSuccess(settings)),
      );
    });
  }

  @override
  Future<void> close() async {
    await settingsStreamSubscription?.cancel();
    return super.close();
  }
}
