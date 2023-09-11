import 'package:flutter/material.dart';
import 'package:ulearning_app/common/utils/app_colors.dart';

Widget text24Normal({String text = "", Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.normal),
  );
}

Widget text16Normal(
    {String text = "", Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.normal),
  );
}

Widget text14Normal(
    {String text = "", Color color = AppColors.primaryThreeElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.normal),
  );
}

Widget textUnderline(
    {String text = "Your text", Color color = AppColors.primaryText}) {
  return GestureDetector(
      onTap: () {
        print("object");
      },
      child: Text(text,
          style: TextStyle(
              color: color, 
              decoration: TextDecoration.underline,
              decorationColor: AppColors.primaryText,
              fontSize: 12, 
              fontWeight: FontWeight.normal
              )
            )
        );
}
