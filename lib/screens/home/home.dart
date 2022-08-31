import 'package:flutter/material.dart';
import 'package:my_tsel_clone/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerContent(String icon, String text) {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
          right: 10,
        ),
        padding: EdgeInsets.fromLTRB(8, 5, 2, 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: red3Color,
        ),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 10,
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: bold13.copyWith(color: Colors.white),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: Colors.white,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi, James',
                  style: bold15.copyWith(color: Colors.white),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.qr_code_rounded,
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(width: 12),
                    Image.asset(
                      'assets/icons/icon-email.png',
                      width: 34,
                    ),
                    SizedBox(width: 12),
                    Image.asset(
                      'assets/icons/icon-help.png',
                      width: 25,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 3),
            Row(
              children: [
                Text(
                  '082212345678',
                  style: bold15.copyWith(color: Colors.white),
                ),
                SizedBox(width: 7),
                Image.asset(
                  'assets/icons/icon-add.png',
                  width: 14,
                )
              ],
            ),
            Row(
              children: [
                headerContent('assets/icons/icon-love.png', '19 Poin'),
                headerContent('assets/icons/icon-star.png', 'Daily Check In'),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
            stops: [0.6, 1],
            colors: [red2Color, yellowColor],
          ),
        ),
        child: ListView(
          children: [
            header(),
          ],
        ),
      ),
    );
  }
}
