import 'package:flutter/material.dart';
import 'package:my_tsel_clone/themes.dart';

class PoinPage extends StatelessWidget {
  const PoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'PoinPage',
          style: medium15.copyWith(color: blue2Color),
        ),
      ),
    );
  }
}
