import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:aikoaweb/components/components.dart';
import 'package:aikoaweb/utils/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:buy_me_a_coffee_widget/buy_me_a_coffee_widget.dart';

import 'buttons.dart';

class MenuBar extends StatelessWidget {
  final Function scrollTo;
  const MenuBar({this.scrollTo});
  @override
  Widget build(BuildContext context) {
    const Color navLinkColor = Color(0xFF6E7274);
    return Container(
      height: 200,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Color(0x1A000000), offset: Offset(0, 2), blurRadius: 4)
      ]),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: <Widget>[
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () =>
                  Navigator.of(context).popUntil((route) => route.isFirst),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 16, 5),
                child: Image.asset("assets/images/aikoa_icon_light.png",
                    height: 100, fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Text("Aikoa",
                style: headlineSecondaryTextStyle.copyWith(fontSize: 24)),
          ),
          Spacer(),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => scrollTo(1),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Features",
                      style: TextStyle(
                          fontSize: 16,
                          color: navLinkColor,
                          fontFamily: fontFamily)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => scrollTo(2),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Install",
                      style: TextStyle(
                          fontSize: 16,
                          color: navLinkColor,
                          fontFamily: fontFamily)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => scrollTo(3),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("About",
                        style: TextStyle(
                            fontSize: 16,
                            color: navLinkColor,
                            fontFamily: fontFamily))),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => openUrl('https://github.com/betasOnly/aikoa'),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: ImageIcon(
                    AssetImage("assets/images/icon_github_64x.png"),
                    color: navLinkColor,
                    size: 24),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: BuyMeACoffeButton(),
          ),
        ],
      ),
    );
  }
}

class MenuBarLite extends StatelessWidget {
  final Function scrollTo;
  const MenuBarLite({this.scrollTo});
  @override
  Widget build(BuildContext context) {
    const Color navLinkColor = Color(0xFF6E7274);
    return Container(
      height: 200,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Color(0x1A000000), offset: Offset(0, 2), blurRadius: 4)
      ]),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: <Widget>[
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () =>
                  Navigator.of(context).popUntil((route) => route.isFirst),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 16, 5),
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Text("Aikoa",
                style: headlineSecondaryTextStyle.copyWith(fontSize: 24)),
          ),
          Spacer(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => openUrl('https://github.com/betasOnly/aikoa'),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: ImageIcon(
                    AssetImage("assets/images/icon_github_64x.png"),
                    color: navLinkColor,
                    size: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
