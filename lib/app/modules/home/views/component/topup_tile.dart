import 'package:flutter/material.dart';
import 'package:latihan_getx/app/shared/theme.dart';

class TopUpTile extends StatelessWidget {
  const TopUpTile({
    Key? key,
    required this.onPressed,
    this.isActive = false,
  }) : super(key: key);

  final Function() onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8),
          backgroundColor: Colors.white,
          elevation: 0,
          side: BorderSide(
            color: isActive ? kPrimaryColor : kGreyColor.withOpacity(0.2),
          ),
        ),
        onPressed: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.currency_bitcoin,
                  size: 18,
                  color: kPrimaryColor,
                ),
                Text(
                  '50',
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                )
              ],
            ),
            Text(
              'Rp50.000',
              style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
