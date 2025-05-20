import 'package:flutter/material.dart';

class ResponsiveDesignWidget extends StatelessWidget {
  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;

  const ResponsiveDesignWidget(
      {super.key,
      required this.desktop,
      required this.mobile,
      required this.tablet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1336) {
          return desktop ?? Container();
        } else if (constraints.maxWidth < 1336 && constraints.maxWidth >= 768) {
          return tablet ?? Container();
        } else {
          return mobile ?? Container();
        }
      },
    );
  }
}
