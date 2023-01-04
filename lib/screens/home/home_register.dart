import 'package:flutter/material.dart';

class HomeRegister extends StatefulWidget {
  const HomeRegister({
    Key? key,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.password,
  }) : super(key: key);
  final String fullName;
  final String email;
  final String phone;
  final String password;

  @override
  State<HomeRegister> createState() => _HomeRegisterState();
}

class _HomeRegisterState extends State<HomeRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const Text("Welcome to register!!"),
            const SizedBox(
              height: 30,
            ),
            Text("Full Name: ${widget.fullName}"),
            Text("Email: ${widget.email}"),
            Text("Phone: ${widget.phone}"),
            Text("Password: ${widget.password}"),
          ],
        ),
      ),
    );
  }
}
