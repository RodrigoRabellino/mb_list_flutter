import 'package:flutter/material.dart';
import 'package:mb_list_flutter/constants.dart';
import 'package:mb_list_flutter/screens/home_page/home_page.dart';
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
      HomePage(),
      Scaffold(),
      Scaffold(),
    ];
  }

  List<PersistentBottomNavBarItem> _itemList() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: kExtraColor,
        inactiveColorPrimary: kAccentColor,
        textStyle: const TextStyle(fontSize: 15),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.list),
        title: "List",
        activeColorPrimary: kExtraColor,
        inactiveColorPrimary: kAccentColor,
        textStyle: const TextStyle(fontSize: 15),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.toggle_off_outlined),
        title: "Settings",
        activeColorPrimary: kExtraColor,
        inactiveColorPrimary: kAccentColor,
        textStyle: const TextStyle(fontSize: 15),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      backgroundColor: kPrimaryColor,
      screens: _screensList(),
      controller: _controller,
      items: _itemList(),
      navBarStyle: NavBarStyle.style9,
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25))
          // BorderRadius.only(
          //   topLeft: Radius.circular(25),
          //   topRight: Radius.circular(25),
          ),
    );
  }
}
