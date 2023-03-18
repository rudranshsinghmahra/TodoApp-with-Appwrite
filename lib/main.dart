import 'package:appwrite/appwrite.dart';
import 'package:appwrite_flutter/views/login_screen.dart';
import 'package:appwrite_flutter/views/sign_up_screen.dart';
import 'package:flutter/material.dart';

Client client = Client();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    client
        .setEndpoint('http://192.168.96.1/v1')
        .setProject('6413fb4e526fdac1873d')
        .setSelfSigned(status: true);
    return const MaterialApp(
      home: SignUpScreen(),
    );
  }
}

