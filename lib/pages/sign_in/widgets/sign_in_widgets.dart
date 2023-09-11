import 'package:flutter/material.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';
import 'package:ulearning_app/common/widgets/app_shadow.dart';
import 'package:ulearning_app/common/widgets/image_widgets.dart';
import 'package:ulearning_app/common/widgets/text_widgets.dart';

AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
      child: Container(
        color: Colors.red,
        height: 1,
      ),
      preferredSize: Size.fromHeight(1),
    ),
    title: text16Normal(text: "Login", color: AppColors.primaryText),
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: const EdgeInsets.only(
      left: 80,
      right: 80,
      top: 40,
      bottom: 20
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png")
      ],
    ),
  );
}

Widget _loginButton(String imagePath) {
  return GestureDetector(
    onTap: () {
      
    },
    child: SizedBox(
      height: 40,
      width: 40,
      child: Image.asset(
        imagePath
      ),
    ),
  );
}

Widget appTextField({
  String text="", 
  String iconName="",
  String hintText = "Type in your info",
  bool obscureText = false
}) {
  return Container(
    padding: const EdgeInsets.only(left: 25, right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        SizedBox(height: 5),
        Container(
          width: 325,
          height: 50,
          decoration: appBoxDecorationTextField(),
          // row contains icon and textfield
          child: Row(
            children: [
              // for showing icon
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: appImage(imagePath: iconName),
              ),
              // our textfield
              Container(
                width: 200,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent
                      )
                    ),
                    // default border with any input
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent
                      )
                    ),
                    // focuse border is with input
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent
                      )
                    ),
                    // default border with any input
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent
                      )
                    ),
                  ),
                  maxLines: 1,
                  autocorrect: false,
                  obscureText: obscureText,
                  // onChanged: ((value) {
                    
                  // },
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}