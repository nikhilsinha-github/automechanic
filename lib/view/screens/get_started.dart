import 'package:automechanic/constants.dart';
import 'package:automechanic/svg_images.dart';
import 'package:automechanic/view/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  register() {
    Navigator.pushNamed(context, 'sum up of all tab screens');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100.0,
                ),
                getStartedImage,
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Welcome to",
                  style: TextStyle(
                    color: kGreyTextColor,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Auto ",
                        style: TextStyle(
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 22.0,
                        ),
                      ),
                      TextSpan(
                        text: "Mechanical ",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 22.0,
                        ),
                      ),
                      TextSpan(
                        text: "Forum",
                        style: TextStyle(
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 22.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. and more recently with desktop.",
                    style: TextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            //Get started button
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 40.0,
                      bottom: 25.0,
                      left: 25.0,
                      right: 25.0,
                    ),
                    child: CustomMaterialButton(
                      callback: register,
                      btnColor: kPrimaryColor,
                      radius: 0.0,
                      verticalPadding: 20.0,
                      text: "GET STARTED",
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
