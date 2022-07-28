import 'package:flutter/material.dart';

class Overview extends StatefulWidget {
  bool open;
  Overview({Key? key, required this.open}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  String details =
      """If you are fascinated by mythology, pack your backpacks and head to Kaiwara, a little village in Chikballapur earlier known as Ekachakrapura. Situated about 65 km from Bengaluru, Kaiwara is famously known for the great poet Sri Yogi Kaiwara Narayana Taatha. Also known as Thataiyya, he was a bilingual poet and devotee of Lord Amara Narayana. Kaiwara is well known for the fort that is situated here. Trekking in Kaiwara can be a bit rough and cumbersome. It’s quite a steep and tough terrain but worth the sight!

Truly a pilgrimage with great mythological significance, Kaiwara is home to many temples and historical sites like:

Amara Narayana Temple is known for its intricate architecture of four sculpted stone pillars with delicately sculpted motifs. Bhima Lingeshwara Temple is situated at the foothill of Bhima Bakasura Betta which is another prominent historical site. It is believed that Bhima, one of the Pandavas killed the demon Bakasura here while they stayed here in exile. About two kilometers from the Amara Narayana Temple lies the Vaikunta Caves also another sacred space where it is believed that Thataiyya meditated and attained spiritual bliss.

Located in Chintamani Taluk, this place is a treat to believers and adventure enthusiasts alike. With plots woven around Mahabharata and Ramayana, the place offers mesmerizing views of hills and valleys where once legends lived.

To get to Kaiwara, you can either take the Bangalore-Hoskote-Kaiwara route or Bangalore, Devanahalli-Vijayapura-Kaiwara route. Bheema Bakasura is a great hill trekking area but not meant for a beginner as it might be a bit dangerous without assistance. As Kaiwara receives heavy rain, it’s best to visit/trek in the months of Dec-March and June- September.

Almost 7 km from Kaiwara is Kailasha Giri. From here one would be able to view cave temples like Ambaji Durga Cave Temples and Ananta Padmanabha and Chenna Keshava Cave temples.

Now, who is ready to trace the mythology lane in Kaiwara?! Gear up! """;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: !widget.open ? NeverScrollableScrollPhysics() : null,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              img("assets/images/img1.webp"),
              img("assets/images/img2.webp"),
              img("assets/images/img3.webp"),
              img("assets/images/img4.webp"),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "About Kaiwara Betta",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            details,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ]),
    );
  }

  img(String img) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: 150,
            child: Image(
              image: AssetImage(img),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
