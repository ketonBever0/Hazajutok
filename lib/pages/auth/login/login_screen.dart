import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/core/application/auth_controller.dart';
import 'package:hazajutok/pages/auth/core/infrastructure/providers.dart';
import 'package:hazajutok/pages/auth/login/application/login_controller.dart';
import 'package:hazajutok/pages/auth/login/domain/login_repository.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(loginControllerProvider);

    Future<void> _onSubmit() async {
      final sm = ScaffoldMessenger.of(ref.context);
      final login = await ref.read(loginControllerProvider.notifier).login();

      String smContent = "";

      login.fold(
        (user) {
          smContent = '${AppLocalizations.of(context)!.loginSuccess}!';
          Navigator.pushReplacementNamed(context, "/");
        },
        (error) {
          switch (error) {
            case LoginError.INVALID_CREDENTIALS:
              smContent =
                  AppLocalizations.of(context)!.loginErrorInvalidCredentials;
            case LoginError.NO_USER:
              smContent = AppLocalizations.of(context)!.loginErrorNoUser;
              break;
            case LoginError.WRONG_PASSWORD:
              smContent = AppLocalizations.of(context)!.loginErrorWrongPassword;
              break;
            case LoginError.UNKNOWN:
              smContent = AppLocalizations.of(context)!.loginErrorUnknown;
              break;
          }
        },
      );

      sm.showSnackBar(SnackBar(content: Text(smContent)));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.mainDrawerLogin),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    // style: TextStyle,
                    onChanged:
                        ref.read(loginControllerProvider.notifier).changeEmail,
                    decoration: InputDecoration(
                        label: Text(AppLocalizations.of(context)!.authEmail),
                        errorText: form.emailError
                            ? AppLocalizations.of(context)!.authMissingEmail
                            : null),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    onChanged: ref
                        .read(loginControllerProvider.notifier)
                        .changePassword,
                    decoration: InputDecoration(
                        label: Text(AppLocalizations.of(context)!.authPassword),
                        errorText: form.passwordError
                            ? AppLocalizations.of(context)!.authMissingPassword
                            : null),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: form.isValid ? () => _onSubmit() : null,
                    child: Text(AppLocalizations.of(context)!.mainDrawerLogin),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
