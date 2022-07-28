import 'package:flutter/material.dart';

import '../../../constants/config.dart';
import '../../About_Us_page/Screens/aboutus_page.dart';
import '../../Trekking_Details_page/Widgets/back_button.dart';
import '../../appbar/customappbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBarMain(title: "Profile"),
          profileDetails(),
          SizedBox(
            height: Config().deviceHeight(context) * 0.03,
          ),
          buttontile(title: "History", icon: Icons.history, onTap: () {}),
          buttontile(
              title: "Privacy & Settings", icon: Icons.settings, onTap: () {}),
          buttontile(
              title: "About",
              icon: Icons.info,
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => AboutUs(),
                //   ),
                // );
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              signout(title: "Sign out", icon: Icons.logout, onTap: () {})
            ],
          )
        ],
      ),
    )));
  }

  profileDetails() {
    return Container(
      child: Column(
        children: [
          Container(
            width: Config().deviceWidth(context) * 0.4,
            height: Config().deviceWidth(context) * 0.4,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: Colors.green.withOpacity(0.2),
                style: BorderStyle.solid,
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              clipBehavior: Clip.hardEdge,
              width: Config().deviceWidth(context) * 0.5,
              height: Config().deviceWidth(context) * 0.32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 3,
                  color: Colors.green.withOpacity(0.6),
                  style: BorderStyle.solid,
                ),
              ),
              child: Icon(
                Icons.person,
                size: 150,
                color: Colors.green.withOpacity(0.2),
              ),
            ),
          ),
          SizedBox(
            height: Config().deviceHeight(context) * 0.03,
          ),
          title("Wade Hudson", 24),
          title("WadeHudson@gmail.com", 15),
        ],
      ),
    );
  }

  title(String s, double? size) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        s,
        style: TextStyle(
            color: Colors.green.shade800,
            fontWeight: FontWeight.w500,
            fontSize: size),
      ),
    );
  }

  buttontile(
      {required String title,
      required IconData icon,
      required void Function()? onTap}) {
    return Container(
      width: Config().deviceWidth(context) * 0.96,
      padding: EdgeInsets.all(8),
      child: ListTile(
        contentPadding: EdgeInsets.only(
          right: 16,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        tileColor: Colors.grey.withOpacity(0.1),
        onTap: onTap,
        leading: CustomBackButton(
          size: 55,
          icon: icon,
        ),
        title: Text(title),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.green.withOpacity(0.5),
        ),
      ),
    );
  }

  signout(
      {required String title,
      required IconData icon,
      required void Function()? onTap}) {
    return Container(
      width: Config().deviceWidth(context) * 0.45,
      padding: EdgeInsets.all(8),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.red.withOpacity(0.1),
        onTap: onTap,
        focusColor: Colors.red,
        leading: Icon(
          icon,
          color: Colors.red.shade900,
        ),
        title: Text(
          title,
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
