import 'package:flutter/material.dart';
import 'package:aikoaweb/utils/utils.dart';
import 'package:aikoaweb/components/colors.dart';

class BuyMeACoffeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 8),
      child: RaisedButton(
        hoverColor: Colors.white,
        highlightColor: Colors.white,
        color: Colors.white,
        child: Container(
          height: 42,
          width: 150,
          child: Image.asset(
            'assets/images/bmc-logo-20.png',
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
          ),
        ),
        onPressed: () => openUrl("https://www.buymeacoffee.com/betasonly"),
      ),
    );
  }
}
