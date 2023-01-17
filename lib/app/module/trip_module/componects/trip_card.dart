import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../routes/pages.dart';
import '../../../core/theme/color_theme.dart';
import '../../../global_widgets/space.dart';

class TripCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          color: Teal,
        ),
        child: GestureDetector(
          onTap: () {
            Get.toNamed(Routes.TRIPDETAILS);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
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
                          color: Surface.withOpacity(0.3)),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/svg/book.svg',
                      color: Surface.withOpacity(0.3),
                    ),
                    const Spacer(),
                    Text(
                      'To',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Surface.withOpacity(0.3)),
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
                          color: Surface),
                    ),
                    const Spacer(),
                    Text(
                      'JFK',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Surface),
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
                          color: Surface.withOpacity(0.3)),
                    ),
                    const Spacer(),
                    Text(
                      'John F. Kennedy, NY',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Surface.withOpacity(0.3)),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '23:45, Thu 15 Oct',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Surface.withOpacity(0.3)),
                    ),
                    const Spacer(),
                    Text(
                      '4:30, Fri 16 Oct',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Surface.withOpacity(0.3)),
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
                          color: Surface.withOpacity(0.3)),
                    ),
                    const Spacer(),
                    Text(
                      'Terminal 2',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Surface.withOpacity(0.3)),
                    ),
                  ],
                ),
                Space.Y(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
