import 'package:flutter/material.dart';
import 'package:latihan_getx/app/shared/theme.dart';

class DestinationTile extends StatelessWidget {
  const DestinationTile({
    Key? key,
    required this.imgUrl,
    required this.place,
    required this.city,
    required this.rating,
  }) : super(key: key);

  final String imgUrl;
  final String place;
  final String city;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 90,
      margin: const EdgeInsets.only(
        bottom: 16,
        top: 16,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      imgUrl,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place,
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
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
                rating.toString(),
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
