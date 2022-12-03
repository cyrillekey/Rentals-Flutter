import 'package:chekikeja/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            verticalSpaceRegular,
            verticalSpaceRegular,
            ListTile(
              leading: InkWell(
                onTap: () => Get.back(),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
              ),
              iconColor: Colors.black,
              title: const Text(
                "Notifications",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            RefreshIndicator(
              color: Colors.black,
              onRefresh: () async {
                await Future.delayed(const Duration(seconds: 3));
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .8,
                child: ListView.builder(
                  itemBuilder: (context, index) => NotificationItem(
                      "Discount Availabble",
                      "Aute et incididunt proident elit. Velit irure in laboris nostrud ut "),
                  itemCount: 6,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell NotificationItem(String title, String subtitle,
          {void Function()? onTap}) =>
      InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/house.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  horizontalSpaceSmall,
                  SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                          textAlign: TextAlign.start,
                        ),
                        verticalSpaceSmall,
                        SizedBox(
                          width: 260,
                          child: Text(
                            subtitle,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                        verticalSpaceSmall,
                        const Text(
                          "1h ago",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  )
                ],
              ),
              verticalSpaceSmall,
              const Divider(
                thickness: 1,
              ),
            ],
          ),
        ),
      );
}
