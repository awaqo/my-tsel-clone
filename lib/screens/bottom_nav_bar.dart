import 'package:flutter/material.dart';
import 'package:my_tsel_clone/screens/explore/explore.dart';
import 'package:my_tsel_clone/screens/home/home.dart';
import 'package:my_tsel_clone/screens/menu/menu.dart';
import 'package:my_tsel_clone/screens/poin/poin.dart';
import 'package:my_tsel_clone/screens/shop/shop.dart';
import 'package:my_tsel_clone/themes.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screens = [
    HomePage(),
    PoinPage(),
    ShopPage(),
    ExplorePage(),
    MenuPage(),
  ];
  @override
  Widget build(BuildContext context) {
    Widget customNavBar() {
      return BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: bold12.copyWith(color: grey3Color),
        unselectedLabelStyle: bold12.copyWith(color: grey3Color),
        items: [
          BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Image.asset(
                  _selectedIndex == 0
                      ? 'assets/icons/icon-home.png'
                      : 'assets/icons/icon-home-outline.png',
                  height: 20,
                  color: _selectedIndex == 0 ? red2Color : grey3Color,
                )),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Image.asset(
                  'assets/icons/icon-trofi.png',
                  height: 20,
                  color: _selectedIndex == 1 ? red2Color : grey3Color,
                )),
            label: 'POIN',
          ),
          BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Image.asset(
                  'assets/icons/icon-cart.png',
                  height: 20,
                  color: _selectedIndex == 2 ? red2Color : grey3Color,
                )),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Image.asset(
                  'assets/icons/icon-rocket.png',
                  height: 20,
                  color: _selectedIndex == 3 ? red2Color : grey3Color,
                )),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Image.asset(
                  'assets/icons/icon-user.png',
                  height: 20,
                  color: _selectedIndex == 4 ? red2Color : grey3Color,
                )),
            label: 'Menu',
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: customNavBar(),
      body: Stack(
          children: _screens
              .asMap()
              .map((i, screen) => MapEntry(
                  i,
                  Offstage(
                    offstage: _selectedIndex != i,
                    child: screen,
                  )))
              .values
              .toList()),
    );
  }
}
