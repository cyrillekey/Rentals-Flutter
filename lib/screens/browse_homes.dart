import 'package:chekikeja/constants/sizes.dart';
import 'package:chekikeja/screens/house_details.dart';
import 'package:chekikeja/widgets/featured_house.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:line_icons/line_icons.dart';

class BrowseScreen extends StatelessWidget {
  BrowseScreen({super.key});
  List<String> _tags = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Chekikeja',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              )
            ],
          ),
          verticalSpaceSmall,
          InkWell(
            onTap: () {
              // Get.bottomSheet(Container(
              //   color: Colors.white,
              //   child: ListView(
              //     children: [
              //       ListTile(
              //         title: Text("Example"),
              //       )
              //     ],
              //   ),
              // ));
              Get.showSnackbar(GetSnackBar(
                title: "Exmape",
                message: "Example snaabar",
              ));
            },
            child: Text("Search Button will go here"),
          ),
          SizedBox(
            height: 35,
            child: ListView.builder(
              itemBuilder: (context, index) => Container(),
              itemCount: 2,
              scrollDirection: Axis.horizontal,
            ),
          ),
          verticalSpaceRegular,
          const Text(
            'Listings',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
          ),
          verticalSpaceSmall,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.builder(
              itemBuilder: (context, index) => InkWell(
                onTap: () => Get.to(HouseDetails()),
                child: SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/house.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      horizontalSpaceMedium,
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '996 Winepod Drive German Embassy',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                            verticalSpaceTiny,
                            SizedBox(
                              width: 180,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 115,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(
                                          LineIcons.bed,
                                          size: 18,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          '2 bedrooms',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(
                                          LineIcons.ruler,
                                          size: 18,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          '4 sqft',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            verticalSpaceSmall,
                            const Text(
                              '\$765/mo',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w800),
                            ),
                            const Divider()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              itemCount: 6,
            ),
          )
        ],
      ),
    );
  }
}
