import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone/data/data.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/login_screen.dart';
// import 'package:instagram_clone/responsive_screen/mob_screen_layout.dart';
// import 'package:instagram_clone/responsive_screen/responsive_screen.dart';
// import 'package:instagram_clone/responsive_screen/web_screen_layout.dart';
import 'package:instagram_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: apiKey,
      appId: appId,
      messagingSenderId: messagingSenderId,
      projectId: projectId,
    ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: const ResponsiveScreenLayout(
      //   mobScreen: MobScreenLayout(),
      //   webScreen: WebScreenLayout(),
      // ),
      home: const LoginScreen(),
    );
  }
}
