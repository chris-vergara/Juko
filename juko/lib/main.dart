import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juko/homepage.dart';
import 'package:juko/login_page.dart';

void main() {
  runApp(const Juko());
}

class Juko extends StatelessWidget {
  const Juko({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const LoginPage()),
        GetPage(name: '/home', page: () => const HomePage()),
      ],
      initialRoute: '/home',
    );
  }
}
