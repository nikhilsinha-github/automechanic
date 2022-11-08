import 'package:automechanic/constants.dart';
import 'package:automechanic/view/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "Create A Post",
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
          horizontal: 25.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "SELECT TOPIC",
              style: TextStyle(
                color: kGreyTextColor,
                fontFamily: 'Poppins-Medium',
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            DropdownSearch<String>(
              mode: Mode.MENU,
              showSelectedItems: true,
              items: const ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
              hint: "- SELECT -",
              onChanged: (val) {},
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              "QUESTION TITLE",
              style: TextStyle(
                color: kGreyTextColor,
                fontFamily: 'Poppins-Medium',
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type here...",
                hintStyle: TextStyle(
                  color: kGreyPrimaryTextColor,
                  fontFamily: "Poppins-ExtraLight",
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              "DETAIL DESCRIPTION OF QUESTION",
              style: TextStyle(
                color: kGreyTextColor,
                fontFamily: 'Poppins-Medium',
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              maxLines: 7,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type here...",
                hintStyle: TextStyle(
                  color: kGreyPrimaryTextColor,
                  fontFamily: "Poppins-ExtraLight",
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomMaterialButton(
                    callback: () {},
                    btnColor: kPrimaryColor,
                    radius: 0.0,
                    verticalPadding: 20.0,
                    text: "SUBMIT",
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
