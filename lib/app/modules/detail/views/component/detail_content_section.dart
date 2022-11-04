import 'package:flutter/material.dart';
import 'package:latihan_getx/app/shared/theme.dart';

class DetailContentSection extends StatelessWidget {
  const DetailContentSection({
    Key? key,
    required this.title,
    required this.city,
    required this.rating,
    required this.about,
  }) : super(key: key);

  final String title;
  final String city;
  final String rating;
  final String about;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 24,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/emblem.png',
            width: 108,
            height: 24,
          ),
          const SizedBox(height: 256),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: whiteTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    city,
                    style: whiteTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: const EdgeInsets.only(right: 2),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'),
                      ),
                    ),
                  ),
                  Text(
                    rating,
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ],
          ),

          // CONTENT
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 30,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: blackTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  about,
                  style: blackTextStyle.copyWith(height: 1.9),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
