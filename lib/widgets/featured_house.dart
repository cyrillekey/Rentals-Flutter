import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

Widget FeaturedHouse(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * .85,
    height: 180,
    child: Column(
      children: [
        BannerCarousel(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          height: 180,
          customizedIndicators: const IndicatorModel.animation(
              width: 10, height: 10, spaceBetween: 2, widthAnimation: 10),
          width: MediaQuery.of(context).size.width,
          indicatorBottom: false,
          activeColor: Colors.amberAccent,
          disableColor: Colors.white,
          animation: true,
          borderRadius: 10,
          banners: [
            BannerModel(imagePath: "assets/images/house.jpg", id: "1"),
            BannerModel(
                imagePath:
                    "assets/images/modern-house-patio-functional-outdoor-600w-1014119716.webp",
                id: "2")
          ],
        )
      ],
    ),
  );
}
