

import 'package:flutter/material.dart';
import 'package:video_example/UI/configuration/sizeconfig.dart';
import 'package:video_example/UI/constants/app_colors.dart';

class CustomWidgets {

  static Widget customsButtonSignIn(String title) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth! * 0.13,
        vertical: SizeConfig.screenWidth! * 0.014,
      ),
      decoration: BoxDecoration(

          color: AppColors.kButtonBlackColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      height: SizeConfig.screenHeight! * 0.06,
      alignment: Alignment.center,
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }










}