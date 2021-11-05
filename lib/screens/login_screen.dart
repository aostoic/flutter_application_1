import 'package:flutter/material.dart';

class LoginPersonScreen extends StatelessWidget {
  const LoginPersonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chupalo rico'),
        ),
        body: const Center(
          child: Text('mas rico aun'),
        ),
      ),
    );
  }
}
