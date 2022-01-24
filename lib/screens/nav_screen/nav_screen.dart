import 'package:flutter/material.dart';
import 'package:mb_list_flutter/constants.dart';
import 'package:mb_list_flutter/screens/home_screen/home_screen.dart';

import 'package:mb_list_flutter/screens/list_screen/list_screen.dart';
import 'package:mb_list_flutter/screens/settings_screen/settings_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _screensList() {
    return const [
      HomeScreen(),
      ListPage(),
      SettingScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _itemList() {
    final List _screenName = [
      {"title": "Home", "icon": Icons.home},
      {"title": "List", "icon": Icons.list_rounded},
      {"title": "Settings", "icon": Icons.settings},
    ];
    return _screenName
        .map(
          (screen) => PersistentBottomNavBarItem(
            icon: Icon(screen["icon"]),
            title: screen["title"],
            activeColorPrimary: kSecondaryColor,
            activeColorSecondary: kTextColor,
            inactiveColorPrimary: kExtraColor,
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: kTextColor,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PersistentTabView(
        context,
        confineInSafeArea: true,
        hideNavigationBarWhenKeyboardShows: true,
        backgroundColor: kPrimaryColor,
        screens: _screensList(),
        controller: _controller,
        items: _itemList(),
        navBarStyle: NavBarStyle.style9,
        decoration: const NavBarDecoration(
            borderRadius: BorderRadius.all(
          Radius.circular(20),
        )
            // BorderRadius.only(
            //   topLeft: Radius.circular(25),
            //   topRight: Radius.circular(25),
            ),
      ),
    );
  }
}
