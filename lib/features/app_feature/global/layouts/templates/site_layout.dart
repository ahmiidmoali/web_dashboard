import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/responsive/screens/desktop_layout.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/responsive/screens/tablet_layout.dart';
import 'package:flutter/material.dart';

import '../../widgets/responsive/responsive_design.dart';
import '../../widgets/responsive/screens/mobile_layout.dart';

class SiteLayout extends StatelessWidget {
  final Widget? desktopLayout;
  final Widget? mobileLayout;
  final Widget? tabletLayout;
  final int? currentIndex;

  final bool useLayout;
  const SiteLayout({
    super.key,
    this.desktopLayout,
    this.mobileLayout,
    this.tabletLayout,
    this.useLayout = true,
    this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveDesignWidget(
      desktop: useLayout
          ? DesktopLayout(
              body: desktopLayout,
              currentIndex: currentIndex,
            )
          : desktopLayout ?? Container(),
      tablet: useLayout
          ? TabletLayout(
              body: tabletLayout ?? desktopLayout, currentIndex: currentIndex)
          : tabletLayout ?? desktopLayout ?? Container(),
      mobile: useLayout
          ? MobileLayout(
              body: mobileLayout ?? desktopLayout, currentIndex: currentIndex)
          : mobileLayout ?? desktopLayout ?? Container(),
    );
  }
}
