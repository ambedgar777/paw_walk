import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paw_walk/screens/chat/chat.dart';
import 'package:paw_walk/screens/home/home_page.dart';
import 'package:paw_walk/screens/profile/profile.dart';
import 'package:paw_walk/screens/search/search.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class PersistentTabScreen extends StatefulWidget {
  const PersistentTabScreen({super.key});

  @override
  State<PersistentTabScreen> createState() => _PersistentTabScreenState();
}

class _PersistentTabScreenState extends State<PersistentTabScreen> {
  late PersistentTabController _controller;

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      SearchScreen(),
      ChatScreen(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: FaIcon(
          FontAwesomeIcons.paw,
        ),
        title: "Home",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.blue.shade100,
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(FontAwesomeIcons.search),
        title: "Search",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.blue.shade100,
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(FontAwesomeIcons.message),
        title: "Chat",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.blue.shade100,
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(FontAwesomeIcons.person),
        title: "Profile",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.blue.shade100,
      ),
    ];
  }

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Color(0xFFFBFDFD),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
        colorBehindNavBar: Color(0xFFFBFDFD),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style5, // Choose the nav bar style with this property.
    );
  }
}
