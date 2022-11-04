import 'package:flutter/material.dart';
import 'package:latihan_getx/app/shared/theme.dart';

class DetailHeaderSection extends StatelessWidget {
  const DetailHeaderSection({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 450,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imgUrl),
            ),
          ),
        ),
        // Custom Shadow
        Container(
          width: double.infinity,
          height: 215,
          margin: const EdgeInsets.only(top: 236),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kWhiteColor.withOpacity(0),
                Colors.black.withOpacity(0.95),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
