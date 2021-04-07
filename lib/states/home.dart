import 'package:flutter/material.dart';
import 'package:markshopping/widget/calltoaction_layout.dart';
import 'package:markshopping/widget/content_layout.dart';
import 'package:markshopping/widget/navigator_layout.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: ScreenTypeLayout(
            desktop: buildDesktop(),
            tablet: buildTabletAnMobile(),
            mobile: buildTabletAnMobile(),
          ),
        ),
      ),
    );
  }

  Widget buildTabletAnMobile() => Column(
        children: [
          NavigatorLayout(),
          CallToActionLayout(),
          ContentLayout(),
        ],
      );

  Widget buildDesktop() => Column(
        children: [
          NavigatorLayout(),
          Expanded(
            child: Row(
              children: [
                ContentLayout(),
                CallToActionLayout(),
              ],
            ),
          ),
        ],
      );
}
