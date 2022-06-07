// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:video_example/UI/configuration/sizeconfig.dart';
import 'app_colors.dart';

class AppStyle {

  static final kMainScreenContainerText =
  TextStyle(color: AppColors.kGetStartedTextColor, fontSize: SizeConfig.screenHeight! * 0.021);

  static final kHeaderTextStyle =
  TextStyle(color: Colors.black, fontSize: SizeConfig.screenHeight! * 0.021, fontWeight: FontWeight.bold);

}
