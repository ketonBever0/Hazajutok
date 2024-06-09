import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/main.dart';
import 'package:hazajutok/pages/auth/registration/utils/registration_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {


  @override
  Widget build(BuildContext context) {

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
                  // onChanged: () {},
                  decoration: InputDecoration(
                      label: Text(AppLocalizations.of(context)!.authUsername)),
                ),
                TextField(
                  // onChanged: () {},
                  decoration: InputDecoration(
                      label: Text(AppLocalizations.of(context)!.authEmail)),
                ),
                // TextField(
                //   // onChanged: () {},
                //   decoration: InputDecoration(label: Text()),
                // ),
                TextField(
                  // onChanged: () {},
                  decoration: InputDecoration(
                      label: Text(AppLocalizations.of(context)!.authPassword)),
                  obscureText: true,
                ),
                TextField(
                  // onChanged: () {},
                  decoration: InputDecoration(
                      label: Text(
                          AppLocalizations.of(context)!.authPasswordAgain)),
                  obscureText: true,
                ),
                TextField(
                  // onChanged: () {},
                  decoration: InputDecoration(
                      label:
                          Text(AppLocalizations.of(context)!.authMobileNumber)),
                ),
                ElevatedButton(
                    onPressed: () async {

                    },
                    child: Text(
                        AppLocalizations.of(context)!.mainDrawerRegistration))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
