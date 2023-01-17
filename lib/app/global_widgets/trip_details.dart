import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/theme/color_theme.dart';
import 'space.dart';

class TripDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 389,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/ticket_card.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'FROM',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: textColor.withOpacity(0.4)),
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/svg/book.svg',
                  color: textColor.withOpacity(0.3),
                ),
                const Spacer(),
                Text(
                  'TO',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: textColor.withOpacity(0.4)),
                ),
              ],
            ),
            Space.Y(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'LHR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: textColor),
                ),
                const Spacer(),
                Text(
                  'ANR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: textColor),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'London, UK',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: textColor.withOpacity(0.5)),
                ),
                const Spacer(),
                Text(
                  'Stocholm, Sweden',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: textColor.withOpacity(0.5)),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '23:45, Thu 13 Jan',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: textColor.withOpacity(0.5)),
                ),
                const Spacer(),
                Text(
                  '4:30, Fri 14 Jan',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: textColor.withOpacity(0.5)),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Terminal 1',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: textColor.withOpacity(0.5)),
                ),
                const Spacer(),
                Text(
                  '2',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: textColor.withOpacity(0.5)),
                ),
              ],
            ),
            Space.Y(20),
            Divider(
              thickness: 1,
              color: textColor.withOpacity(0.2),
            ),
            Space.Y(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Space.X(10),
                Column(
                  children: [
                    Text(
                      'GATE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: textColor.withOpacity(0.4)),
                    ),
                    Text(
                      'C2',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: textColor),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Text(
                      'FLIGHT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: textColor.withOpacity(0.4)),
                    ),
                    Text(
                      'UA 902Y',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: textColor),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Text(
                      'SEAT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: textColor.withOpacity(0.4)),
                    ),
                    Text(
                      '14E',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: textColor),
                    ),
                  ],
                ),
              ],
            ),
            Space.Y(20),
            Divider(
              thickness: 1,
              color: textColor.withOpacity(0.2),
            ),
            Space.Y(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Space.X(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TRAVELLER',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: textColor.withOpacity(0.4)),
                    ),
                    Space.Y(5),
                    Text(
                      'Ritika Dongol',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: textColor),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CLASS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: textColor.withOpacity(0.4)),
                    ),
                    Space.Y(5),
                    Text(
                      'Economy',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: textColor),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Space.X(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TICKET NUMBER',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: textColor.withOpacity(0.4)),
                    ),
                    Space.Y(5),
                    Text(
                      '01924797192847984971',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: textColor),
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/qrcode.png',
                  height: 60,
                )
              ],
            ),
          ],
        ),
      ) /* add child content here */,
    );
  }
}
