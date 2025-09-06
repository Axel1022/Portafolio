import 'package:flutter/material.dart';
import 'package:portafolio/styles/app_text_styles.dart';

enum FormFactorType { mobile, tablet, desktop }

abstract class AppInsets {
  double get padding;
}

class SmallInsets implements AppInsets {
  @override
  double get padding => 16;
}

class LargeInsets implements AppInsets {
  @override
  double get padding => 80;
}

extension FormFactorTypeExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get width => mediaQuery.size.width;
  double get height => mediaQuery.size.height;

  FormFactorType get deviceType {
    if (width < 600) {
      return FormFactorType.mobile;
    } else if (width < 900) {
      return FormFactorType.tablet;
    } else {
      return FormFactorType.desktop;
    }
  }

  /// TextStyles según dispositivo
  AppTextStyles get textStyle {
    switch (deviceType) {
      case FormFactorType.mobile:
      case FormFactorType.tablet:
        return SmallTextStyles();
      case FormFactorType.desktop:
        return LargeTextStyles();
    }
  }

  AppInsets get insets {
    switch (deviceType) {
      case FormFactorType.mobile:
        return SmallInsets();
      case FormFactorType.tablet:
      case FormFactorType.desktop:
        return LargeInsets();
    }
  }

  bool get isMobile => deviceType == FormFactorType.mobile;
  bool get isTablet => deviceType == FormFactorType.tablet;
  bool get isDesktop => deviceType == FormFactorType.desktop;
}
