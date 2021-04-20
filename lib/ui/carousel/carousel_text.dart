import 'package:flutter/material.dart';
import 'package:aikoaweb/components/components.dart';

RichText slide1Text = RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(text: 'One', style: carouselGreyTextStyle),
      TextSpan(text: ' page ', style: carouselWhiteTextStyle),
      TextSpan(text: 'overview', style: carouselGreyTextStyle)
    ],
  ),
  textAlign: TextAlign.center,
);

RichText slide2Text = RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(text: 'Easy', style: carouselGreyTextStyle),
      TextSpan(text: ' task', style: carouselWhiteTextStyle),
      TextSpan(text: ' management', style: carouselGreyTextStyle)
    ],
  ),
  textAlign: TextAlign.center,
);

RichText slide3Text = RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(text: 'Simple', style: carouselGreyTextStyle),
      TextSpan(text: ' time ', style: carouselWhiteTextStyle),
      TextSpan(text: 'boxing', style: carouselGreyTextStyle)
    ],
  ),
  textAlign: TextAlign.center,
);

RichText slide4Text = RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(text: 'Focus', style: carouselGreyTextStyle),
      TextSpan(text: ' using the ', style: carouselWhiteTextStyle),
      TextSpan(text: 'pomodoro method', style: carouselGreyTextStyle)
    ],
    style: TextStyle(height: 1.1),
  ),
  textAlign: TextAlign.center,
);
