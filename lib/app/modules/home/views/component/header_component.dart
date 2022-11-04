import 'package:flutter/material.dart';
import 'package:latihan_getx/app/shared/theme.dart';

class HeaderHomeComponent extends StatelessWidget {
  const HeaderHomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
        vertical: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,\nKezia Anne',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Where to fly today?',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/image_profile.png',
            width: 60,
            height: 60,
          ),
        ],
      ),
    );
  }
}
