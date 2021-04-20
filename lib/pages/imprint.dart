import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:aikoaweb/ui/block_wrapper.dart';
import 'package:aikoaweb/ui/menuBars.dart';
import 'package:aikoaweb/utils/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../components/components.dart';
import '../ui/blocks.dart';

class Imprint extends StatelessWidget {
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
                          Text("Impressum",
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Responsible for the content of this website are:",
                        style: headlineSecondaryTextStyle,
                        textAlign: TextAlign.center),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
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
                              padding: EdgeInsets.symmetric(vertical: 32),
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
                              padding: EdgeInsets.only(bottom: 16),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8),
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
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Mail: support@betasonly.dev",
                                        style: bodyTextStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Phone: +49 157 71250237",
                                        style: bodyTextStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Hornstein 1a",
                                        style: bodyTextStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "82544 Egling",
                                        style: bodyTextStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Germany",
                                        style: bodyTextStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        rowFit: FlexFit.tight,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 32),
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
                              padding: EdgeInsets.only(bottom: 16),
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
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8),
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
                            Column(children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Mail: Aikoa@betasonly.dev",
                                        style: bodyTextStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Phone: +49 174 7340273",
                                        style: bodyTextStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Am Ziegelland 38",
                                        style: bodyTextStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "85604 Zorneding",
                                        style: bodyTextStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Germany",
                                        style: bodyTextStyle,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ]),
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
      ),
    );
  }
}
