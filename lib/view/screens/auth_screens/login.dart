import 'package:automechanic/constants.dart';
import 'package:automechanic/svg_images.dart';
import 'package:automechanic/view/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 100.0,
                ),
                appLogo,
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                const Text(
                  "Sign in with emails",
                  style: TextStyle(
                    color: kGreyPrimaryTextColor,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                //email
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kGreyBorderColor,
                        ),
                      ),
                      hintText: 'Email address',
                      hintStyle: TextStyle(
                        color: kGreyPrimaryTextColor,
                        fontFamily: 'Poppins-ExtraLight',
                      ),
                    ),
                  ),
                ),
                //password
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: kGreyPrimaryTextColor,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kGreyBorderColor,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        color: kGreyPrimaryTextColor,
                        fontFamily: 'Poppins-ExtraLight',
                      ),
                    ),
                  ),
                ),
                //forgot password
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'forgot password');
                        },
                        child: const Text("Forgot Password?"),
                      ),
                    ],
                  ),
                ),
                //Sign in button
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 25.0,
                        ),
                        child: CustomMaterialButton(
                          callback: signIn,
                          btnColor: kPrimaryColor,
                          radius: 0.0,
                          verticalPadding: 20.0,
                          text: "SIGN IN",
                          textColor: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            //New here? Create an account
            Padding(
              padding: const EdgeInsets.only(
                bottom: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New here?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Create an account"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
