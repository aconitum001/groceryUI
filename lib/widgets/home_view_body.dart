import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gorcery/widgets/best_seller_section.dart';
import 'package:gorcery/widgets/cateogry_section.dart';
import 'package:gorcery/widgets/offer_widget.dart';

import 'package:gorcery/widgets/search_text_field.dart';
import 'package:gorcery/widgets/user_profile_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  static const List<OfferWidget> items = [
    OfferWidget(color: Color(0xff23AA49)),
    OfferWidget(color: Color(0xffFF8181)),
    OfferWidget(color: Color(0xffFFD966)),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const UserProfileSection(
            name: "Amelia Barlow",
          ),
          const SizedBox(
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: SizedBox(
              height: 50,
              child: SearchTextField(),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          CarouselSlider(
            items: items,
            options: CarouselOptions(
              height: 160,
              aspectRatio: 342 / 158,
              disableCenter: true,
              initialPage: 0,
              viewportFraction: 0.88,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CateogrySection(),
          ),
          const SizedBox(
            height: 24,
          ),
          const BestSellerSection(),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
