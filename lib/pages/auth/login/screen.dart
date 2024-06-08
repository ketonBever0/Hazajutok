import 'package:flutter/material.dart';
import 'package:hazajutok/pages/auth/login/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginFormInput form = new LoginFormInput("", "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    // style: TextStyle,
                    onChanged: (ctx) {
                      form.changeEmail(ctx);
                    },
                    decoration: InputDecoration(label: Text("E-mail")),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    onChanged: (ctx) {
                      form.changePassword(ctx);
                    },
                    decoration: InputDecoration(label: Text("Password")),
                    obscureText: true,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Login"),
                  ),
                  Text("or"),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/register");
                      },
                      child: Text("Register")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
