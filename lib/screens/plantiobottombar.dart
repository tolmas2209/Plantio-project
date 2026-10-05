import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liquid_glass_bottom_nav_water_effect/liquid_glass_bottom_nav_water_effect.dart';
import 'package:plantio/gen/assets.gen.dart';
import 'package:plantio/main.dart';
import 'package:plantio/screens/pages/profile.dart';
import 'package:plantio/screens/pages/book.dart';
import 'package:plantio/screens/pages/home.dart';
import 'package:plantio/screens/pages/shop.dart';

class Plantiobottombar extends StatefulWidget {
  const Plantiobottombar({super.key});

  @override
  State<Plantiobottombar> createState() => _PlantiobottombarState();
}

int pageIndex = 0;
List<Widget> pages = [Home(), Book(), Profile(), Shop()];

class _PlantiobottombarState extends State<Plantiobottombar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: LiquidGlassBottomNavBar(
        safeAreaBottom: false,
        style: LiquidGlassBottomNavStyle(primaryLiquidColor: primary),
        items: [
          LiquidGlassBottomNavItem(
            label: "Home",
            icon: pageIndex == 0
                ? SvgPicture.asset(Assets.icons.offhome)
                : SvgPicture.asset(Assets.icons.onhome),
          ),
          LiquidGlassBottomNavItem(
            label: "Book",
            icon: pageIndex == 1
                ? SvgPicture.asset(Assets.icons.offbook)
                : SvgPicture.asset(Assets.icons.onbook),
          ),
          LiquidGlassBottomNavItem(
            label: "Profile",
            icon: pageIndex == 2
                ? SvgPicture.asset(Assets.icons.offprofile)
                : SvgPicture.asset(Assets.icons.onprofile),
          ),
          LiquidGlassBottomNavItem(
            label: "Shop",
            icon: pageIndex == 3
                ? SvgPicture.asset(Assets.icons.offshop)
                : SvgPicture.asset(Assets.icons.onshop),
          ),
        ],
        currentIndex: pageIndex,
        onItemSelected: (value) {
          setState(() {
            pageIndex = value;
          });
        },
      ),
    );
  }
}
