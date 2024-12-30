import 'package:flutter/material.dart';
import 'package:turistando/app/modules/login/ui/controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  final LoginController controller;

  const LoginPage({super.key, required this.controller});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: TextEditingController(text: 'Login'),
            ),
            TextField(
              obscureText: true,
              controller: TextEditingController(text: 'Password'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: ElevatedButton(
                onPressed: widget.controller.navigateHome,
                child: Text('Continuar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
