import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:aikoaweb/components/components.dart';
import 'package:aikoaweb/pages/imprint.dart';
import 'package:aikoaweb/utils/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Features extends StatelessWidget {
  final Key featuresKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      child: ResponsiveRowColumn(
        rowColumn: !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        columnCrossAxisAlignment: CrossAxisAlignment.center,
        columnMainAxisSize: MainAxisSize.min,
        rowPadding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
        columnPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        columnSpacing: 50,
        rowSpacing: 50,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Icon(Icons.access_time_rounded, size: 40),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("Detailed Timeboxing",
                      style: headlineSecondaryTextStyle,
                      textAlign: TextAlign.center),
                ),
                Text(
                    "Plan your day and fix time slots for every due task. Use the timeboxing strategy to increase your productivity.",
                    style: bodyTextStyle,
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Icon(Icons.calendar_today, size: 40),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("Calender included",
                      style: headlineSecondaryTextStyle,
                      textAlign: TextAlign.center),
                ),
                Text(
                    "Worried about your cluttered calendar? Not necessary anymore. Aikoa automatically timeboxes all your daily appointments.",
                    style: bodyTextStyle,
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Icon(Icons.brush, size: 40),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("Minimalistic Design",
                      style: headlineSecondaryTextStyle,
                      textAlign: TextAlign.center),
                ),
                Text(
                    "Black and white design to keep the distraction low. Fast and intuitive navigation to reduce the time spent using the app. The goal is to empower the user to reduce screentime and be more productive.",
                    style: bodyTextStyle,
                    textAlign: TextAlign.center),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InstallAikoa extends StatelessWidget {
  final Key installKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      padding: blockPadding(context),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          constraints: BoxConstraints(maxWidth: 800),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text("Install Aikoa today.", style: headlineTextStyle),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text("It’s free, beatiful and easy to use.",
                    style: bodyTextStyle.copyWith(fontSize: 24)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: ResponsiveRowColumn(
                  rowColumn:
                      !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  rowCrossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ResponsiveRowColumnItem(
                      rowFit: FlexFit.tight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 32),
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () => openUrl(
                                "https://play.google.com/store/apps/details?id=com.betasonly.aikoa"),
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Image.asset(
                                    "assets/images/google-play-badge.png",
                                    height: 100,
                                    fit: BoxFit.contain)),
                          ),
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFit: FlexFit.tight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 32),
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () => openUrl(
                                'https://apps.apple.com/app/id1553344471'),
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Image.asset(
                                    "assets/images/appstore-badge.png",
                                    height: 75,
                                    fit: BoxFit.contain)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  final Key aboutKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      padding: EdgeInsets.all(40),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          constraints: BoxConstraints(maxWidth: 780),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Team",
                      style: headlineSecondaryTextStyle,
                      textAlign: TextAlign.center),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "We are two math graduates, interested in project based learning, open source projects and self development. If you are interested our background you can find us on Linkedin. If you have any questions don't hesitate, just write us a message.",
                        style: bodyTextStyle,
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: ResponsiveRowColumn(
                  rowColumn:
                      !ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  rowCrossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ResponsiveRowColumnItem(
                      rowFit: FlexFit.tight,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 32),
                            child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/mathias.jpeg",
                                      ),
                                      fit: BoxFit.fill),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 32),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Mathias Leppmeier",
                                      style: headlineSecondaryTextStyle,
                                      textAlign: TextAlign.center),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () => openUrl(
                                          'https://www.linkedin.com/in/mleppmeier/'),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        child: ImageIcon(
                                            AssetImage(
                                                "assets/images/icons8-linkedin-100.png"),
                                            color: Color(0xFF6E7274),
                                            size: 24),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          )
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      rowFit: FlexFit.tight,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 32),
                            child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/jan.jpeg",
                                      ),
                                      fit: BoxFit.fill),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 32),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Jan Brunckhorst",
                                      style: headlineSecondaryTextStyle,
                                      textAlign: TextAlign.center),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () => openUrl(
                                          'https://www.linkedin.com/in/brunckhorst/'),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        child: ImageIcon(
                                            AssetImage(
                                                "assets/images/icons8-linkedin-100.png"),
                                            color: Color(0xFF6E7274),
                                            size: 24),
                                      ),
                                    ),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundDark,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ResponsiveRowColumn(
        rowColumn: !ResponsiveWrapper.of(context).isMobile,
        columnMainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveRowColumnItem(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: Image.asset("assets/images/aikoa_icon_dark.png",
                  height: 100, fit: BoxFit.contain),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFit: FlexFit.loose,
            columnFit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: bodyTextStyle.copyWith(
                        fontSize: 14, color: Colors.white, height: 2),
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pushNamed('/Imprint');
                            },
                          text: "Imprint"),
                      TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pushNamed('/Privacy');
                            },
                          text: "Privacy Policy"),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      style: bodyTextStyle.copyWith(
                          fontSize: 14, color: Colors.white, height: 1),
                      children: [
                        TextSpan(text: '\n'),
                        TextSpan(
                            text:
                                "Except as otherwise noted, this work is licensed under a Creative Commons Attribution 4.0 International License, and code samples are licensed under the BSD License.",
                            style: bodyTextStyle.copyWith(
                                fontSize: 10, color: Colors.white)),
                        TextSpan(text: '\n'),
                        TextSpan(text: '\n'),
                        TextSpan(text: '\n'),
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
