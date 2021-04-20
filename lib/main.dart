import 'package:flutter/material.dart';
import 'package:aikoaweb/pages/imprint.dart';
import 'package:aikoaweb/ui/block_wrapper.dart';
import 'package:aikoaweb/ui/carousel/carousel.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'components/components.dart';
import 'pages/privacy_policy.dart';
import 'ui/blocks.dart';
import 'pages/imprint.dart';
import 'ui/menuBars.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Imprint': (context) => Imprint(),
        '/Privacy': (context) => Privacy(),
      },
      title: 'Aikoa.app',
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          defaultScale: true,
          minWidth: 480,
          defaultName: MOBILE,
          breakpoints: [
            ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: MOBILE),
            ResponsiveBreakpoint.resize(850, name: TABLET),
            ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          background: Container(color: background)),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
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
          child: MenuBar(scrollTo: scrollToWidget)),
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
  ResponsiveWrapper(
      maxWidth: 1200,
      minWidth: 1200,
      defaultScale: true,
      mediaQueryData: MediaQueryData(size: Size(1200, 640)),
      child: RepaintBoundary(child: Carousel())),
  BlockWrapper(Features()),
  BlockWrapper(InstallAikoa()),
  BlockWrapper(About()),
  Footer(),
];
