import 'package:automechanic/view/screens/auth_screens/forgot_password.dart';
import 'package:automechanic/view/screens/auth_screens/login.dart';
import 'package:automechanic/view/screens/auth_screens/register.dart';
import 'package:automechanic/view/screens/auth_screens/reset_password.dart';
import 'package:automechanic/view/screens/create_post.dart';
import 'package:automechanic/view/screens/get_started.dart';
import 'package:automechanic/view/screens/splash_screen.dart';
import 'package:automechanic/view/screens/sum_up_of_all_tab_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Automechanic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        'get_started': (context) => const GetStarted(),
        'register': (context) => const Register(),
        'login': (context) => const Login(),
        'forgot password': (context) => const ForgotPassword(),
        'reset password': (context) => const ResetPassword(),
        'sum up of all tab screens': (context) => const SumUpOfAllTabScreens(),
        'create post': (context) => const CreatePost(),
      },
    );
  }
}
