import 'package:flutter/material.dart';
import 'package:myapp/pages/sign_in/sign_in.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('Cloud Plants'),
      // ),
      body: SignInPage(),
    );
  }
}
