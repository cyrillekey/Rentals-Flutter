import 'package:chekikeja/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView(
        children: [
          const ListTile(
            leading: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            iconColor: Colors.black,
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
          ),
          verticalSpaceSmall,
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/house.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12)),
            ),
            title: const Text("John Doe"),
            subtitle: const Text("johndoe@gmail.com"),
          ),
          verticalSpaceRegular,
          verticalSpaceTiny,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Account Settings",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
          ),
          verticalSpaceMedium,
          settingsItem(
              "Show Email",
              CupertinoSwitch(
                value: true,
                onChanged: (val) {},
                thumbColor: Colors.black,
                activeColor: Colors.grey.shade400,
              )),
          settingsItem(
              "Show Number",
              CupertinoSwitch(
                value: true,
                onChanged: (val) {},
                thumbColor: Colors.black,
                activeColor: Colors.grey.shade400,
              )),
          verticalSpaceTiny,
          settingsItem(
              "Facebook Account",
              SizedBox(
                height: 35,
                child: Row(
                  children: const [
                    Icon(FontAwesomeIcons.link),
                    horizontalSpaceRegular,
                    Text("Linked")
                  ],
                ),
              )),
          verticalSpaceTiny,
          settingsItem(
              "Profile",
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 28,
              )),
          verticalSpaceSmall,
          settingsItem(
              "Change Password",
              const Icon(
                Icons.lock,
                size: 28,
              )),
          Center(
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18))),
                  fixedSize:
                      MaterialStateProperty.all<Size>(const Size(240, 55)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black)),
              child: const Text(
                "Sign Out",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          verticalSpaceMedium,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 10,
            ),
          ),
          verticalSpaceSmall,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "General Settings",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
          ),
          verticalSpaceRegular,
          settingsItem(
              "Notification",
              CupertinoSwitch(
                value: true,
                onChanged: (val) {},
                thumbColor: Colors.black,
                activeColor: Colors.grey.shade400,
              )),
          verticalSpaceSmall,
          settingsItem("Language", const Text("English")),
          settingsItem(
              "Night Mode",
              CupertinoSwitch(
                value: false,
                onChanged: (val) {},
                thumbColor: Colors.black,
                trackColor: Colors.blueGrey.shade100,
                activeColor: Colors.grey.shade400,
              ))
        ],
      ),
    );
  }

  InkWell settingsItem(String title, Widget trailing,
      {void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                trailing
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
