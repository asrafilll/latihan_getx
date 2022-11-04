import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_getx/app/modules/detail/views/component/detail_content_section.dart';
import 'package:latihan_getx/app/modules/detail/views/component/detail_header_section.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DetailHeaderSection(
            imgUrl: Get.arguments['imgUrl'],
          ),
          DetailContentSection(
            title: Get.arguments['place'],
            city: Get.arguments['city'],
            rating: Get.arguments['rating'].toString(),
            about: Get.arguments['about'],
          ),
        ],
      ),
    );
  }
}
