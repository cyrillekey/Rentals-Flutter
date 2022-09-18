import 'package:chekikeja/widgets/featured_house.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return ListView(
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
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  size: 30,
                ))
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
        // TextFormField(
        //   decoration: InputDecoration(
        //       floatingLabelBehavior: FloatingLabelBehavior.never,
        //       labelText: "What Are You Looking for",
        //       prefixIcon: Icon(
        //         FontAwesomeIcons.magnifyingGlass,
        //         color: Colors.grey.shade300,
        //       ),
        //       suffixIcon: Container(
        //         alignment: Alignment.centerLeft,
        //         width: 40,
        //         padding: EdgeInsets.only(left: 10),
        //         decoration: BoxDecoration(
        //           border: Border(left: BorderSide(color: Colors.grey.shade300)),
        //         ),
        //         child: Icon(FontAwesomeIcons.filterCircleXmark),
        //       ),
        //       enabledBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(18),
        //           borderSide: BorderSide(color: Colors.grey.shade300)),
        //       errorBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(18),
        //           borderSide: BorderSide(color: Colors.grey.shade300)),
        //       focusedBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(18),
        //           borderSide: BorderSide(color: Colors.grey.shade300)),
        //       focusedErrorBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(18),
        //           borderSide: BorderSide(color: Colors.grey.shade300)),
        //       border: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(18),
        //           borderSide: BorderSide(color: Colors.grey.shade300))),
        // ),
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
                return featuredHouse(context, "552 Brodaveny sute sssd",
                    "1 Bedroom", "kes 12000", "Kes 122000", "1464");
              }),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "Featured Items",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
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
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
