import 'package:chekikeja/constants/sizes.dart';
import 'package:chekikeja/screens/house_details.dart';
import 'package:chekikeja/widgets/featured_house.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const _pageSize = 20;
  final PagingController<int, String> _pagingController =
      PagingController(firstPageKey: 0);
  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "ChekiKeja",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.toNamed("/notifications");
                    },
                    icon: const Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                  ),
                  Positioned(
                      right: 11,
                      top: 11,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6)),
                        constraints:
                            const BoxConstraints(minWidth: 14, minHeight: 14),
                        child: const Text(
                          "6",
                          style: TextStyle(color: Colors.white, fontSize: 8),
                          textAlign: TextAlign.center,
                        ),
                      ))
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 140,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: const DecorationImage(
                  image: AssetImage(
                      "assets/images/modern-house-patio-functional-outdoor-600w-1014119716.webp"),
                  fit: BoxFit.cover,
                )),
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Discover",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Find Your Future Home",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Featured Items",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return featuredHouse(
                      context,
                      "552 Brodaveny sute sssd",
                      "1 Bedroom",
                      "kes 12000",
                      "Kes 122000",
                      "1464", onTap: () {
                    Get.to(const HouseDetails());
                  });
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Recommended",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          verticalSpaceRegular,
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 200,
                padding: const EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/house.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        const Positioned(
                          right: 10,
                          top: 10,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.redAccent,
                            size: 28,
                          ),
                        )
                      ],
                    ),
                    verticalSpaceRegular,
                    SizedBox(
                      width: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Heaven",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                          Text(
                            "Kes 200",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.orange.shade900),
                          )
                        ],
                      ),
                    ),
                    verticalSpaceTiny,
                    Container(
                        alignment: Alignment.centerLeft,
                        child: const Text("123,auroa lane"))
                  ],
                ),
              ),
              itemCount: 5,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "All Items",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: PagedListView<int, String>(
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate(
                    firstPageProgressIndicatorBuilder: (context) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        child: Shimmer.fromColors(
                            child: Card(),
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!),
                      )
                    ],
                  );
                }, itemBuilder: (context, item, child) {
                  return Text(item);
                })),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
