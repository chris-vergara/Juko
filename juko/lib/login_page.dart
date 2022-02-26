import 'package:flutter/material.dart';
import 'package:juko/juko_icons.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('pressed');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20,
                    child: Image.asset("assets/spotify_logo.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Sign In & Connect to Spotify',
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
