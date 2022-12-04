import 'package:chekikeja/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                const Text(
                  'Details',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const Icon(Icons.favorite)
              ],
            ),
            verticalSpaceMedium,
            Container(
              height: screenHeightPercentage(context, percentage: .30),
              width: screenHeight(context),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/house.jpg'),
                      fit: BoxFit.cover)),
            ),
            verticalSpaceMedium,
            SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    thumbnailItem(),
                    thumbnailItem(),
                    thumbnailItem(),
                    thumbnailItem()
                  ],
                )),
            verticalSpaceMedium,
            const Text(
              'Harmony Studio',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RatingBarIndicator(
                    rating: 3.5,
                    unratedColor: Colors.grey,
                    itemSize: 24,
                    itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.yellow.shade600,
                        )),
                horizontalSpaceSmall,
                const Text(
                  '4.8',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                horizontalSpaceTiny,
                const Text(
                  'Based on 45 Reviews',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(FontAwesomeIcons.locationPin),
                horizontalSpaceTiny,
                Text(
                  '56 west avenue mano',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            verticalSpaceRegular,
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(247, 247, 247, 1.0),
                        borderRadius: BorderRadius.circular(4)),
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.bed,
                          size: 26,
                          color: Colors.grey,
                        ),
                        Text(
                          '3 Beds',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            verticalSpaceSmall,
            const Text(
              'Listing Agent',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpaceSmall,
            Row(
              children: [],
            ),
            const Divider(),
            verticalSpaceSmall,
            Row(
              children: const [
                Text('Owned by'),
                horizontalSpaceTiny,
                CircleAvatar(radius: 12),
                horizontalSpaceSmall,
                Text(
                  'John Test',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(100, 30)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.grey)))),
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.florinSign,
                      color: Color.fromRGBO(63, 96, 158, 1),
                      size: 18,
                    ),
                    label: const Text(
                      'Floor',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    )),
                TextButton.icon(
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(100, 30)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.grey)))),
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.locationDot,
                      color: Color.fromRGBO(63, 96, 158, 1),
                      size: 18,
                    ),
                    label: const Text(
                      'Floor',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    )),
                TextButton.icon(
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(100, 30)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.grey)))),
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.message,
                      color: Color.fromRGBO(63, 96, 158, 1),
                      size: 18,
                    ),
                    label: const Text(
                      'Inbox',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ))
              ],
            ),
            verticalSpaceSmall,
            const Divider(),
            verticalSpaceSmall,
            const Text(
              'Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpaceSmall,
            const Text(
              'Voluptate enim enim ipsum cupidatat nulla ex ex commodo pariatur reprehenderit nisi. Velit fugiat elit sit consectetur Lorem do ea aute. Ut fugiat quis exercitation sit adipisicing proident ex do nostrud consectetur commodo magna incididunt anim.',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

Widget thumbnailItem() {
  return Container(
    width: 70,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage('assets/images/house.jpg'), fit: BoxFit.cover)),
  );
}
