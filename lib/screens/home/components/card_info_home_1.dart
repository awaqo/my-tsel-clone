import 'package:flutter/material.dart';
import 'package:my_tsel_clone/themes.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CardInfoHome extends StatelessWidget {
  const CardInfoHome({super.key});

  @override
  Widget build(BuildContext context) {
    Widget circularPercent(double percent) {
      return CircularPercentIndicator(
        radius: 23.0,
        lineWidth: 8.0,
        animation: true,
        percent: percent,
        circularStrokeCap: CircularStrokeCap.round,
        backgroundColor: grey2Color,
        progressColor: blue4Color,
      );
    }

    Widget infoCardList_1() {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: circularPercent(0.7),
          ),
          SizedBox(width: 15),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Internet',
                      style: bold13.copyWith(
                        color: blue3Color,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '8.3 GB ',
                      style: semibold13.copyWith(
                        color: blue3Color,
                      ),
                    ),
                    Text(
                      '/ 15 GB',
                      style: reguler13.copyWith(
                        color: grey4Color,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: blue3Color,
                    ),
                  ],
                ),
                Text(
                  'Active until 20 September 2022',
                  style: reguler10.copyWith(color: grey5Color),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget infoCardList_2() {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: circularPercent(0),
          ),
          SizedBox(width: 15),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Multimedia',
                      style: bold13.copyWith(
                        color: blue3Color,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Not yet purchased',
                      style: medium13.copyWith(
                        color: blue3Color,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: blue3Color,
                    ),
                  ],
                ),
                Text(
                  'You have no quota',
                  style: reguler10.copyWith(color: blue3Color),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Container(
      margin: EdgeInsets.only(
        top: 18,
        left: 16,
        right: 16,
      ),
      height: 333,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding:
                  EdgeInsets.only(top: 25, bottom: 21, left: 17, right: 17),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: grey1Color,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rp 51.000',
                    style: extraBold26.copyWith(color: blue3Color),
                  ),
                  Text(
                    'Active until 22 Sep 2022',
                    style: medium12.copyWith(color: grey5Color),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 19),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: red1Color,
                        ),
                        child: Text(
                          'Buy Package',
                          style: medium12.copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 18),
                      Text(
                        'Top Up',
                        style: medium12.copyWith(color: blue4Color),
                      ),
                      SizedBox(width: 19),
                      Text(
                        'Send Gift',
                        style: medium12.copyWith(color: blue4Color),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 25),
              child: Column(
                children: [
                  infoCardList_1(),
                  Spacer(),
                  infoCardList_2(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
