import 'package:automechanic/constants.dart';
import 'package:automechanic/svg_images.dart';
import 'package:automechanic/view/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  verifyEmail() {
    Navigator.pushNamed(context, 'reset password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "Forgot Password",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50.0,
            ),
            forgotPasswordImage,
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              "Reset by Email",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                "Please enter your email address and we will send you instruction to reset your password.",
                style: TextStyle(
                  color: kGreyPrimaryTextColor,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            //Email address
            Padding(
              padding: const EdgeInsets.all(15.0),
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
            //Continue button
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 14.0,
                    ),
                    child: CustomMaterialButton(
                      callback: verifyEmail,
                      btnColor: kPrimaryColor,
                      radius: 0.0,
                      verticalPadding: 20.0,
                      text: "CONTINUE",
                      textColor: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
