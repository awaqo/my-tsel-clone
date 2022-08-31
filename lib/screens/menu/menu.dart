import 'package:flutter/material.dart';
import 'package:my_tsel_clone/themes.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'MenuPage',
          style: medium15.copyWith(color: blue2Color),
        ),
      ),
    );
  }
}
