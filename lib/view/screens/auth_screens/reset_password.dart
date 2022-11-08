import 'package:automechanic/constants.dart';
import 'package:automechanic/svg_images.dart';
import 'package:automechanic/view/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  resetPassword() {}
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
            resetPasswordImage,
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              "Set Password",
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
                "Create new password",
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
            //password
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
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
            //Confirm password
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
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
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(
                    color: kGreyPrimaryTextColor,
                    fontFamily: 'Poppins-ExtraLight',
                  ),
                ),
              ),
            ),
            //Submit button
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 14.0,
                    ),
                    child: CustomMaterialButton(
                      callback: resetPassword,
                      btnColor: kPrimaryColor,
                      radius: 0.0,
                      verticalPadding: 20.0,
                      text: "SUBMIT",
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
