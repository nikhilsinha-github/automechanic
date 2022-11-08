import 'package:automechanic/constants.dart';
import 'package:automechanic/svg_images.dart';
import 'package:automechanic/view/widgets/custom_icon_text_button.dart';
import 'package:flutter/material.dart';

class SumUpOfAllTabScreens extends StatefulWidget {
  const SumUpOfAllTabScreens({Key? key}) : super(key: key);

  @override
  _SumUpOfAllTabScreensState createState() => _SumUpOfAllTabScreensState();
}

class _SumUpOfAllTabScreensState extends State<SumUpOfAllTabScreens> {
  int selectedIndex = 0;

  returnScreen(n, height) {
    if (n == 0) {
      return homeScreen();
    }
    if (n == 1) {
      return topicScreen(height);
    }
    if (n == 2) {
      return Container();
    }
    if (n == 3) {
      return Container();
    }
  }

  Widget homeScreen() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 75.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // profile picture
                    const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage('assets/Ellipse 1.png'),
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    //Welcome
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                            color: kGreyTextColor,
                          ),
                        ),
                        Text(
                          "Steve Smith",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CustomIcontextButton(
                  btnBorderColor: kPrimaryColor,
                  callback: addPost,
                  icon: Icons.add,
                  iconColor: kPrimaryColor,
                  text: "Add Post",
                  textColor: kPrimaryColor,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          //Search box
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: kGreyFillColor,
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      onChanged: (value) {},
                      onSubmitted: (value) {},
                      decoration: const InputDecoration(
                        fillColor: kGreyFillColor,
                        focusColor: kGreyFillColor,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: kGreyIconColor,
                        ),
                        hintText: 'Search topic',
                        hintStyle: TextStyle(
                          color: kGreyIconColor,
                          fontFamily: 'Poppins-Light',
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //image section
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/Rectangle 10.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 75.0,
                        ),
                        child: Text(
                          "Hello, what can we help you find?",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins-Bold",
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 75.0,
                        ),
                        child: Text(
                          "Find answers, ask questions, and connect with our community users from around the world.",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget topicScreen(height) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 75.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Topics",
                  style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: 18.0,
                  ),
                ),
                CustomIcontextButton(
                  btnBorderColor: kPrimaryColor,
                  callback: addPost,
                  icon: Icons.add,
                  iconColor: kPrimaryColor,
                  text: "Add Post",
                  textColor: kPrimaryColor,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          //Search box
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: kGreyFillColor,
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      onChanged: (value) {},
                      onSubmitted: (value) {},
                      decoration: const InputDecoration(
                        fillColor: kGreyFillColor,
                        focusColor: kGreyFillColor,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: kGreyIconColor,
                        ),
                        hintText: 'Search topic',
                        hintStyle: TextStyle(
                          color: kGreyIconColor,
                          fontFamily: 'Poppins-Light',
                          fontSize: 12.0,
                        ),
                      ),
                    ),
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
              "Explore by topics",
              style: TextStyle(
                color: kGreyTextColor,
                fontFamily: "Poppins-Medium",
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: SizedBox(
              height: height - 325,
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                    ),
                    child: Card(
                      elevation: 2.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.05),
                          border: const Border(
                            left: BorderSide(
                              color: kPrimaryColor,
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "General Talks - Meet 'N' Greet",
                                style: TextStyle(
                                  fontFamily: "Poppins-Medium",
                                ),
                              ),
                              Text(
                                "$index posts",
                                style: const TextStyle(
                                  color: kGreyTextColor,
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.arrow_right_alt,
                                      size: 50.0,
                                      color: kPrimaryColor,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  addPost() {
    Navigator.pushNamed(context, 'create post');
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kPrimaryColor,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: homeIcon,
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: chatIcon,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: personIcon,
            label: "",
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: kPrimaryColor,
        onTap: (n) {
          setState(() {
            selectedIndex = n;
          });
        }, //_onItemTapped,
      ),
      body: returnScreen(selectedIndex, screenHeight),
    );
  }
}
