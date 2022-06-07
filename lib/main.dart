import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_example/UI/splash.dart';

import 'Data/controller/store_provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) {
          return StoreController();
        }),
      ],
      builder: (context, child) {
        return  MaterialApp(
          theme: ThemeData(
              fontFamily: 'WorkSans'
          ),
          debugShowCheckedModeBanner: false,
          home:  const SplashScreen(),
        );
      },
    );
  }
}

