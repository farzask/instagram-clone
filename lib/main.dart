import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive_screen/mob_screen_layout.dart';
import 'package:instagram_clone/responsive_screen/responsive_screen.dart';
import 'package:instagram_clone/responsive_screen/web_screen_layout.dart';
import 'package:instagram_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveScreenLayout(
        mobScreen: MobScreenLayout(),
        webScreen: WebScreenLayout(),
      ),
    );
  }
}
