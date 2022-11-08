import 'package:automechanic/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    welcomeToApp();
  }

  welcomeToApp() async {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, 'get_started');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: appLogo,
      ),
    );
  }
}
