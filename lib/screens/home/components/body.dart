import 'package:flutter/material.dart';
import 'package:salon_app/constants.dart';

import 'photo_gallery.dart';
import 'header_with_seachbox.dart';
import 'our_services.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Our Services", press: () {}),
          OurServices(),
          TitleWithMoreBtn(title: "Photo Gallery", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
