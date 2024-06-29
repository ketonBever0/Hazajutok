import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/registration/application/registration_controller.dart';
import 'package:hazajutok/pages/auth/registration/domain/registration_form.dart';

class RegistrationScreen extends ConsumerWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(registrationControllerProvider);

    String? getPasswordAgainError() {
      if (form.confirmPasswordError == ConfirmPasswordError.MISSING)
        return AppLocalizations.of(context)!.authMissingConfirmPassword;
      if (form.confirmPasswordError == ConfirmPasswordError.NOT_MATCHING)
        return AppLocalizations.of(context)!
            .authPasswordAndConfirmPasswordNotMatching;
      return null;
    }

    Future<void> _onSubmit(WidgetRef ref) async {
      final scaffoldMessenger = ScaffoldMessenger.of(ref.context);
      final controller = ref.read(registrationControllerProvider.notifier);
      try {
        final user = await controller.registration();
        Navigator.of(context).pushReplacementNamed("/");
        scaffoldMessenger.showSnackBar(SnackBar(
            content: Text(
                '${AppLocalizations.of(context)!.registrationSuccesful} ${user.email}')));
      } catch (e) {
        scaffoldMessenger.showSnackBar(SnackBar(
            content:
                Text('${AppLocalizations.of(context)!.registrationFailed}')));
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                TextField(
                  onChanged: ref
                      .read(registrationControllerProvider.notifier)
                      .changeFullname,
                  decoration: InputDecoration(
                      label: Text(AppLocalizations.of(context)!.authFullname),
                      errorText: form.fullnameError
                          ? AppLocalizations.of(context)!.authMissingFullname
                          : null),
                ),
                TextField(
                  onChanged: ref
                      .read(registrationControllerProvider.notifier)
                      .changeEmail,
                  decoration: InputDecoration(
                      label: Text(AppLocalizations.of(context)!.authEmail),
                      errorText: form.emailError
                          ? AppLocalizations.of(context)!.authMissingEmail
                          : null),
                ),
                TextField(
                  onChanged: ref
                      .read(registrationControllerProvider.notifier)
                      .changePassword,
                  decoration: InputDecoration(
                      label: Text(AppLocalizations.of(context)!.authPassword),
                      errorText: form.passwordError
                          ? AppLocalizations.of(context)!.authMissingPassword
                          : null),
                  obscureText: true,
                ),
                TextField(
                  onChanged: ref
                      .read(registrationControllerProvider.notifier)
                      .changePasswordAgain,
                  decoration: InputDecoration(
                      label:
                          Text(AppLocalizations.of(context)!.authPasswordAgain),
                      errorText: getPasswordAgainError()),
                  obscureText: true,
                ),
                TextField(
                  onChanged: ref
                      .read(registrationControllerProvider.notifier)
                      .changeMobile,
                  decoration: InputDecoration(
                      label:
                          Text(AppLocalizations.of(context)!.authMobileNumber),
                      errorText: form.mobileError
                          ? AppLocalizations.of(context)!
                              .authMissingMobileNumber
                          : null),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: form.isValid ? () => _onSubmit(ref) : null,
                    child: Text(
                        AppLocalizations.of(context)!.mainDrawerRegistration))
              ],
            ))
          ],
        ),
      ),
    );
    ;
  }
}
