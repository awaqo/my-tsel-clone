import 'package:flutter/material.dart';
import 'package:my_tsel_clone/themes.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ExplorePage',
          style: medium15.copyWith(color: blue2Color),
        ),
      ),
    );
  }
}
