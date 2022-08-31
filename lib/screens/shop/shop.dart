import 'package:flutter/material.dart';
import 'package:my_tsel_clone/themes.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ShopPage',
          style: medium15.copyWith(color: blue2Color),
        ),
      ),
    );
  }
}
