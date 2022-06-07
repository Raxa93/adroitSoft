// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_example/Data/controller/store_provider.dart';
import 'package:video_example/UI/configuration/sizeconfig.dart';
import 'package:video_example/UI/custom_widgets/custom_widgets.dart';
import 'package:video_example/UI/store_views/store_list_view.dart';

import '../constants/app_colors.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kPrimaryColorWhite,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.01,
              ),
              Image.asset("assets/logo.png",
                  height: SizeConfig.screenHeight! * 0.25, width: SizeConfig.screenWidth! * 0.35),

              Text(
                "Adroit Soft Solution",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: AppColors.kAvatarDarkGrey),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.1,
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: AppColors.kButtonBlackColor),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: emailController,
                  onTap: null,
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    filled: true,
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Consumer<StoreController>(
                  builder: (context,storeVm,_){
                    return TextFormField(
                      obscureText: storeVm.showPassword ? false :true,
                      controller: passwordController,
                      onTap: null,
                      decoration:  InputDecoration(
                        suffixIcon: InkWell(
                          onTap: (){
                            storeVm.setShowPassword();

                          },
                          child: Icon(
                            showPassword ? Icons.visibility_off :  Icons.visibility,
                            color: AppColors.kButtonBlackColor,
                          ),
                        ),
                        hintText: 'Password',
                        filled: true,
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.028,
              ),
              InkWell(child: CustomWidgets.customsButtonSignIn("Sign In"), onTap: () async {
                Navigator.of(context).pushReplacement(MaterialPageRoute(

                    builder: (BuildContext context) => const StoreListView()));
              }),
              SizedBox(height: SizeConfig.screenHeight! * 0.17),
              const Text(
                'Powered by:Adroid Soft Solution',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
