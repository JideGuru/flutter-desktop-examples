import 'package:flutter/material.dart';
import 'package:flutter_email_ui/components/responsive_widget.dart';
import 'package:flutter_email_ui/pages/home/desktop/desktop.dart';
import 'package:flutter_email_ui/pages/home/mobile/mobile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: HomePageDesktop(),
      smallScreen: HomePageMobile(),
    );
  }
}
