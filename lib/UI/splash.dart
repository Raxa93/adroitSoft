import 'dart:async';
import 'package:flutter/material.dart';

import 'configuration/sizeconfig.dart';
import 'constants/app_colors.dart';
import 'constants/app_styles.dart';
import 'login/login_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Timer(
        const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(

            builder: (BuildContext context) => const LoginView())));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! * 0.25,
            ),
            Image.asset("assets/logo.png",height: SizeConfig.screenHeight! * 0.25,width: SizeConfig.screenWidth! * 0.35),

            Text(
              "Bringing Ideas to Reality",
              style: AppStyle.kHeaderTextStyle.copyWith(
                  fontSize: SizeConfig.screenHeight! * 0.025,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.38,
            ),
            Text("Powered by : Ardi soft Solutions",
                style: AppStyle.kMainScreenContainerText.copyWith(
                    fontSize: SizeConfig.screenHeight! * 0.018,
                    color: AppColors.kAvatarDarkGrey,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
