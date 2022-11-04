import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_getx/app/modules/home/views/component/destination_tile.dart';
import 'package:latihan_getx/app/shared/theme.dart';

class NewDestinationSection extends StatefulWidget {
  const NewDestinationSection({Key? key}) : super(key: key);

  @override
  State<NewDestinationSection> createState() => _NewDestinationSectionState();
}

class _NewDestinationSectionState extends State<NewDestinationSection> {
  final List<Map<String, dynamic>> destinationData = [
    {
      'imgUrl': 'assets/image_destination6.png',
      'place': 'Danau Beratan',
      'city': 'Singaraja',
      'rating': 4.8,
      'about':
          'Upcountry lake with a famed waterfront Hindu temple, Ulun Danu Beratan, plus boating & restaurants.'
    },
    {
      'imgUrl': 'assets/image_destination7.png',
      'place': 'Sydney Opera',
      'city': 'Australia',
      'rating': 4.7,
      'about':
          'The Sydney Opera House is a multi-venue performing arts centre in Sydney, located on the foreshore of Sydney Harbour.',
    },
    {
      'imgUrl': 'assets/image_destination8.png',
      'place': 'Roma',
      'city': 'Italy',
      'rating': 4.8,
      'about':
          'Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome',
    },
    {
      'imgUrl': 'assets/image_destination9.png',
      'place': 'Payung Teduh',
      'city': 'Singapura',
      'rating': 4.5,
      'about': 'Payung Teduh is one of the cool places in Singapura',
    },
    {
      'imgUrl': 'assets/image_destination10.png',
      'place': 'Hill Hey',
      'city': 'Monaco',
      'rating': 4.7,
      'about': 'Hill Hey is one of the cool places in Monaco'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          for (var i in destinationData)
            InkWell(
              onTap: () => Get.toNamed(
                '/detail',
                arguments: i,
              ),
              child: DestinationTile(
                imgUrl: i['imgUrl'],
                place: i['place'],
                city: i['city'],
                rating: i['rating'],
              ),
            )
        ],
      ),
    );
  }
}
