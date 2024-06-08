import 'package:flutter/material.dart';

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
                  decoration: InputDecoration(label: Text("Username")),
                ),
                TextField(
                  // onChanged: () {},
                  decoration: InputDecoration(label: Text("E-mail")),
                ),
                TextField(
                  // onChanged: () {},
                  decoration: InputDecoration(label: Text("Password")),
                ),
                TextField(
                  // onChanged: () {},
                  decoration: InputDecoration(label: Text("Password")), obscureText: true,
                ),
                TextField(
                  // onChanged: () {},
                  decoration: InputDecoration(label: Text("Password again")), obscureText: true,
                ),
                TextField(
                  // onChanged: () {},
                  decoration: InputDecoration(label: Text("Mobile number")),
                ),

              ],
            ))
          ],
        ),
      ),
    );
  }
}
