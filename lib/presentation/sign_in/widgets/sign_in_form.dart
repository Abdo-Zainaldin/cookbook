import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cookbook_app/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../presentation/localization/l10n/localization_helper.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) => FlushbarHelper.createError(
              message: failure.map(
                cancelledByUser: (_) => context.cancelledFailureStr,
                serverError: (_) => context.serverErrorFailureStr,
                emailAlreadyInUse: (_) => context.emailAlreadyInUseFailureStr,
                invalidEmailAndPasswordCombination: (_) =>
                    context.invalidEmailAndPasswordCombinationFailureStr,
              ),
            ).show(context),
            (_) {
              context.router.replace(const RecipeOverviewPageWraperRoute(
                  children: [RecipesOverviewPageRoute()]));
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: context.emailStr,
                ),
                onChanged: (value) => context.read<SignInFormBloc>().add(
                      SignInFormEvent.emailChanged(value),
                    ),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                          invalidEmail: (_) => context.invalidEmailStr,
                          orElse: () => null),
                      (_) => null,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: context.passwordStr,
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context.read<SignInFormBloc>().add(
                      SignInFormEvent.passwordChanged(value),
                    ),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .password
                    .value
                    .fold(
                      (f) => f.maybeMap(
                          invalidPassword: (_) => context.invalidPasswordStr,
                          orElse: () => null),
                      (_) => null,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextButton(
                        onPressed: () => context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed(),
                            ),
                        child: Text(context.signInStr)),
                    const VerticalDivider(
                      width: 8,
                    ),
                    TextButton(
                        onPressed: () => context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmailAndPasswordPressed(),
                            ),
                        child: Text(context.registerStr)),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton.icon(
                onPressed: () => context
                    .read<SignInFormBloc>()
                    .add(const SignInFormEvent.singInWithGooglePressed()),
                icon: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    ' G ',
                    style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                label: Text(context.signInWithGoogleStr),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(
                  height: 8,
                ),
                const LinearProgressIndicator(),
              ]
            ],
          ),
        );
      },
    );
  }
}
