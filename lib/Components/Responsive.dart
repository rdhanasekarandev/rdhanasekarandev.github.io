import 'package:flutter/material.dart';

class ResponsiveSize {
  BuildContext context;

  ResponsiveSize(context) {
    this.context = context;
  }

  double responsive({@required double size, double medium, double small}) {
    if (MediaQuery.of(context).size.width > 1600) {
      size = medium != null ? medium : size * 1.1;
    } else if (MediaQuery.of(context).size.width > 1200 &&
        MediaQuery.of(context).size.width < 1600) {
    } else if (MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200) {
      size = medium != null ? medium : size / 1.2;
    } else {
      size = small != null ? small : size / 1.4;
    }
    return size;
  }

  double responsiveFont({@required double size, double medium, double small}) {
    if (MediaQuery.of(context).size.width > 1200) {
    } else if (MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200) {
      size = medium != null ? medium : size - 2;
    } else {
      size = small != null ? small : size - 4;
    }
    return size;
  }
}
