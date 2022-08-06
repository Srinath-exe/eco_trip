import 'package:eco_trip/main/About_Us_page/Screens/aboutus_page.dart';
import 'package:eco_trip/main/navpage/main_page.dart';
import 'package:flutter/material.dart';

Widget buildMenu(BuildContext context) {
  return SingleChildScrollView(
    padding: const EdgeInsets.symmetric(vertical: 50.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 22.0,
              ),
              SizedBox(height: 16.0),
              Text(
                "Hello, Srinath",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return MainPage(
                index: 0,
              );
            }));
          },
          leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
          title: const Text("Home"),
          textColor: Colors.white,
          dense: true,
        ),
        ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return MainPage(
                index: 3,
              );
            }));
          },
          leading:
              const Icon(Icons.verified_user, size: 20.0, color: Colors.white),
          title: const Text("Profile"),
          textColor: Colors.white,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return MainPage(
                index: 1,
              );
            }));
          },
          leading:
              const Icon(Icons.hiking_rounded, size: 20.0, color: Colors.white),
          title: const Text("Treks"),
          textColor: Colors.white,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return MainPage(
                index: 1,
              );
            }));
          },
          leading:
              const Icon(Icons.search_rounded, size: 20.0, color: Colors.white),
          title: const Text("Discover"),
          textColor: Colors.white,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {},
          leading:
              const Icon(Icons.star_border, size: 20.0, color: Colors.white),
          title: const Text("Favorites"),
          textColor: Colors.white,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return const AboutUs();
            }));
          },
          leading: const Icon(Icons.info_outline_rounded,
              size: 20.0, color: Colors.white),
          title: const Text("About Us"),
          textColor: Colors.white,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        SizedBox(
          height: 100,
        ),
        Image.asset(
          "assets/images/newsletter.png",
          width: 300,
          fit: BoxFit.fitWidth,
        )
      ],
    ),
  );
}
