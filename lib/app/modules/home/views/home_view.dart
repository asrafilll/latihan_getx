import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_getx/app/modules/home/controllers/home_controller.dart';
import 'package:latihan_getx/app/modules/home/views/component/topup_tile.dart';

import 'package:latihan_getx/app/shared/theme.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.5,
        title: Text(
          'Top Up Tweak Point',
          style: blackTextStyle.copyWith(
            fontWeight: bold,
          ),
        ),
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mau Top-Up Berapa?',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'Tweak pointsmu gak bakalan kadaluarsa kok',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 8,
                      bottom: 24,
                    ),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      '1 Tweak Points senilai dengan Rp1.000',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  TopUpTile(
                    onPressed: () => controller.changeStatus('1'),
                    isActive: controller.id.value == '1',
                  ),
                  TopUpTile(
                    onPressed: () => controller.changeStatus('2'),
                    isActive: controller.id.value == '2',
                  ),
                  TopUpTile(
                    onPressed: () => controller.changeStatus('3'),
                    isActive: controller.id.value == '3',
                  ),
                  TopUpTile(
                    onPressed: () => controller.changeStatus('4'),
                    isActive: controller.id.value == '4',
                  ),
                  TopUpTile(
                    onPressed: () => controller.changeStatus('5'),
                    isActive: controller.id.value == '5',
                  ),
                  TopUpTile(
                    onPressed: () => controller.changeStatus('6'),
                    isActive: controller.id.value == '6',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
