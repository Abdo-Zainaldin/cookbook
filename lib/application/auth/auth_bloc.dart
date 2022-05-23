import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:cookbook_app/domain/auth/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(
    this._authFacade,
  ) : super(const _Initial()) {
    on<AuthCheckRequested>((event, emit) async {
      final userOption = await _authFacade.getSignedInUser();

      userOption.fold(
        () => emit(const AuthState.unauthenticated()),
        (_) => emit(const AuthState.authenticated()),
      );
    });

    on<SignOut>((event, emit) async {
      await _authFacade.signOut();

      emit(const AuthState.unauthenticated());
    });
  }
}
