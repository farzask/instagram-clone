import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimensions.dart';

class ResponsiveScreenLayout extends StatelessWidget {
  final Widget webScreen;
  final Widget mobScreen;

  const ResponsiveScreenLayout(
      {super.key, required this.webScreen, required this.mobScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenLayout) {
          return webScreen;
        } else {
          return mobScreen;
        }
      },
    );
  }
}
