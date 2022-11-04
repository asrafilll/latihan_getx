import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_getx/app/modules/home/views/component/header_component.dart';
import 'package:latihan_getx/app/modules/home/views/component/new_destination_section.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        HeaderHomeComponent(),
        NewDestinationSection(),
      ],
    ));
  }
}
