import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hazajutok/pages/auth/core/application/auth_controller.dart';
import 'package:hazajutok/pages/auth/core/domain/auth_state.dart';
import 'package:hazajutok/pages/auth/core/infrastructure/providers.dart';

class ConsumerDrawer extends ConsumerWidget {
  const ConsumerDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);
    final controller = ref.watch(authRepositoryProvider);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(child: Text("Welcome!")),
          if (authState is Unauthenticated) ...[
            ListTile(
              leading: const Icon(Icons.add),
              title: Text(AppLocalizations.of(context)!.mainDrawerRegistration),
              onTap: () {
                Navigator.pushNamed(context, "/register");
              },
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: Text(AppLocalizations.of(context)!.mainDrawerLogin),
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
            ),
          ] else ...[
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(AppLocalizations.of(context)!.mainDrawerMyAccount),
              onTap: () {
                Navigator.pushNamed(context, "/me");
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(AppLocalizations.of(context)!.mainDrawerLogOut),
              onTap: () async {
                if (await confirm(context,
                    title: Text(AppLocalizations.of(context)!.confirmLogOut))) {
                  controller.signOut;
                }
              },
            ),
          ],
          const Divider(),
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(AppLocalizations.of(context)!.language),
          ),
        ],
      ),
    );
  }
}
