import 'package:flutter/material.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';
import 'package:ulearning_app/common/widgets/button_widgets.dart';
import 'package:ulearning_app/common/widgets/text_widgets.dart';
import 'package:ulearning_app/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackground,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primaryBackground,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // top login button
                thirdPartyLogin(),
                // more login option message
                Center(child: text14Normal(text: "Or use your email account to login")),
                const SizedBox(height: 50),
                // email text box
                appTextField(
                  text: "Email",
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your email address"
                ),
                const SizedBox(height: 20),
                // password text box
                appTextField(
                  text: "Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your password",
                  obscureText: true
                ),
                const SizedBox(height: 20),
                // forgot text
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  child: textUnderline(text: "Forgot password?"),
                ),
                const SizedBox(height: 100),
                // app login button
                Center(child: appButton(buttonName: "Login")),
                const SizedBox(height: 20),
                Center(child: appButton(
                    buttonName: "Register",
                    isLogin: false
                  )
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}