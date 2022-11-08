import 'package:automechanic/constants.dart';
import 'package:automechanic/svg_images.dart';
import 'package:automechanic/view/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool checked = false;

  signUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  "Create an account",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                const Text(
                  "Enter your details",
                  style: TextStyle(
                    color: kGreyPrimaryTextColor,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
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
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: kGreyPrimaryTextColor,
                        fontFamily: 'Poppins-ExtraLight',
                      ),
                    ),
                  ),
                ),
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
                      hintText: 'Phone',
                      hintStyle: TextStyle(
                        color: kGreyPrimaryTextColor,
                        fontFamily: 'Poppins-ExtraLight',
                      ),
                    ),
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 2.0,
                  ),
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checked,
                    title: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "I accept ",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          TextSpan(
                            text: "Terms & Conditions",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onChanged: (val) {
                      if (mounted) {
                        setState(() {
                          checked = !checked;
                        });
                      }
                    },
                  ),
                ),
                //Sign up button
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 25.0,
                        ),
                        child: CustomMaterialButton(
                          callback: signUp,
                          btnColor: kPrimaryColor,
                          radius: 0.0,
                          verticalPadding: 20.0,
                          text: "SIGN UP",
                          textColor: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            //Already have an account?
            Padding(
              padding: const EdgeInsets.only(
                bottom: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    child: const Text("Sign in"),
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
