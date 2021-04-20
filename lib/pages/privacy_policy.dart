import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:aikoaweb/ui/block_wrapper.dart';
import 'package:aikoaweb/ui/menuBars.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'privacy_text.dart';
import '../components/components.dart';
import '../ui/blocks.dart';

class Privacy extends StatelessWidget {
  static final route = '/';
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  void scrollToWidget(int index) {
    itemScrollController.scrollTo(index: index, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 85),
          child: MenuBarLite(scrollTo: scrollToWidget)),
      body: ScrollablePositionedList.builder(
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
          itemCount: blocks.length,
          itemBuilder: (context, index) {
            return blocks[index];
          }),
    );
  }
}

List<Widget> blocks = [
  BlockWrapper(Header()),
  BlockWrapper(Responsibles()),
  Footer(),
];

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 32),
        child: Container(
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
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Privacy Policy",
                              style: headlineTextStyle,
                              textAlign: TextAlign.center),
                        ],
                      ),
                    ])))));
  }
}

class Responsibles extends StatelessWidget {
  final Key aboutKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Container(
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
              child: Container(
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: RichText(
                      text: TextSpan(
                          text: "Security and Protection of your personal data",
                          style: headlineSecondaryTextStyle),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  privacy1,
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: RichText(
                      text: TextSpan(
                        text: "Definitions",
                        style: headlineSecondaryTextStyle,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  definitions,
                  lawfulness,
                  dataCollection,
                  personalDataCollection,
                  children,
                  googleAnalytics,
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: RichText(
                      text: TextSpan(
                        text: "Rights of the data subject",
                        style: headlineSecondaryTextStyle,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  rights,
                ]),
              )),
        ),
      ),
    );
  }
}
