import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

Widget featuredHouse(BuildContext context, String title, String bedrooms,
    String price, String discountedPrice, String sqft) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * .85,
    height: 280,
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
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
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 75,
                width: MediaQuery.of(context).size.width * .50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 105,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.bed,
                                  size: 26,
                                  color: Colors.grey,
                                ),
                                Text(
                                  bedrooms,
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       const Icon(
                          //         Icons.bed,
                          //         size: 26,
                          //         color: Colors.grey,
                          //       ),
                          //       Text(
                          //         sqft,
                          //         style: const TextStyle(
                          //             color: Colors.grey, fontSize: 15),
                          //       )
                          //     ],
                          //   ),
                          // )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        TagsItem("Houser"),
                        TagsItem("Rents"),
                        TagsItem("Rent")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      discountedPrice,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget TagsItem(String title) {
  return Wrap();
}
