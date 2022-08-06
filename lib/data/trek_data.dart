class Trek {
  Trek(
      {required this.name,
      required this.location,
      required this.description,
      required this.length,
      required this.difficulty,
      required this.duration,
      required this.start,
      required this.end,
      required this.loc,
      required this.time,
      required this.id,
      required this.imgs});
  int id;
  String name;
  String location;
  String description;
  String length;
  String duration;
  String difficulty;
  String start;
  String end;
  Tags loc;
  String time;
  List<String> imgs;
}

enum Tags { Bangalore, Belagavi, Chikkamagaluru, Bellary }

List<Trek> treks = [
  Trek(
      id: 1,
      name: "Kaiwara Betta",
      location: "Bengaluru",
      description:
          """If you are fascinated by mythology, pack your backpacks and head to Kaiwara, a little village in Chikballapur earlier known as Ekachakrapura. Situated about 65 km from Bengaluru, Kaiwara is famously known for the great poet Sri Yogi Kaiwara Narayana Taatha. Also known as Thataiyya, he was a bilingual poet and devotee of Lord Amara Narayana. Kaiwara is well known for the fort that is situated here. Trekking in Kaiwara can be a bit rough and cumbersome. It’s quite a steep and tough terrain but worth the sight!

Truly a pilgrimage with great mythological significance, Kaiwara is home to many temples and historical sites like:

Amara Narayana Temple is known for its intricate architecture of four sculpted stone pillars with delicately sculpted motifs. Bhima Lingeshwara Temple is situated at the foothill of Bhima Bakasura Betta which is another prominent historical site. It is believed that Bhima, one of the Pandavas killed the demon Bakasura here while they stayed here in exile. About two kilometers from the Amara Narayana Temple lies the Vaikunta Caves also another sacred space where it is believed that Thataiyya meditated and attained spiritual bliss.

Located in Chintamani Taluk, this place is a treat to believers and adventure enthusiasts alike. With plots woven around Mahabharata and Ramayana, the place offers mesmerizing views of hills and valleys where once legends lived.

To get to Kaiwara, you can either take the Bangalore-Hoskote-Kaiwara route or Bangalore, Devanahalli-Vijayapura-Kaiwara route. Bheema Bakasura is a great hill trekking area but not meant for a beginner as it might be a bit dangerous without assistance. As Kaiwara receives heavy rain, it’s best to visit/trek in the months of Dec-March and June- September.

Almost 7 km from Kaiwara is Kailasha Giri. From here one would be able to view cave temples like Ambaji Durga Cave Temples and Ananta Padmanabha and Chenna Keshava Cave temples.

Now, who is ready to trace the mythology lane in Kaiwara?! Gear up!
""",
      length: "1.30",
      difficulty: "difficult",
      duration: "3.0",
      end: "Mylapurabetta View Point",
      start: "Main Gate Of Kaiwara Tapovana At Shamaraohosapete Village",
      loc: Tags.Bangalore,
      time: "6:30 AM",
      imgs: [
        "assets/images/trek/trek1img1.png",
        "assets/images/trek/trek1img2.png",
        "assets/images/trek/trek1img3.png",
        "assets/images/trek/trek1img4.png",
      ]),
  Trek(
      id: 2,
      name: "Skandagiri",
      location: "Bengaluru",
      description:
          """Skandagiri, also known as Kalavara Durga, is an ancient mountain fortress located approximately 70 km from Bangalore city, and 3 km from Chikballapur in the Indian state of Karnataka. It is off Bellary Road ( NH 7 Hyderabad-Bangalore Highway), and overlooks Nandi Hills and Muddenahalli. The peak is at an altitude of about 1350 meters.

Skandagiri is a perfect weekend getaway near Bangalore, preferred by most adventure and nature lovers. Located in the Nandi Hill ranges, at a distance of about 68 kms from Bangalore, the historic hill fort of Skandagiri is also famous by the name of Kalwarebetta. It is one of the most loved destinations for trekking near Bangalore that offers a perfect break from the busy and stressful city life and transports the participants into a calm and peaceful environment. The trek is an exciting climbing adventure for enthusiasts.

Skandagiri hiking is a day long trip that is usually commenced after breakfast in the morning. The total hiking distance is 8 kms moderate to tough difficulty level, which makes it important for the participants to be physically and mentally fit.

Hiking to Skandagiri commences from the Papagni Temple, which is located at the foothills of the Kalwara village. The participants get to see a majestic view of the fortress located on the peak at a height of 1350m above sea level, through the entire hiking trail. The trail itself passes through a maze of dense shrubs which can be quite intriguing.

Upon reaching the top, hikers often feel mesmerized by the sight of old fortress, which despite being in a dilapidated condition reflects the majestic appeal it once held. There is also an old abandoned Shiva temple at the top where the hikers can relax and enjoy the view of their magnificient surroundings.""",
      length: "4.0",
      difficulty: "Modarate",
      duration: "2.0",
      start: "Kalwara Village",
      end: "Skandagiri Hilltop",
      loc: Tags.Bangalore,
      time: "4:00 AM & 8:00 AM",
      imgs: [
        "assets/images/trek/trek2img1.png",
        "assets/images/trek/trek2img2.png",
        "assets/images/trek/trek2img3.png",
        "assets/images/trek/trek2img4.png",
      ]),
  Trek(
      id: 3,
      name: "Ramadevara betta",
      location: "Bengaluru",
      description:
          """Ramadevara betta is situated very close to Tumkur town and one of the major attraction for the nature lovers. This trail starts from Gokula Goshale and ends at kalyani.

This trek is about 7kms in length and will take about 3.5 hours to cover. Along the trail you'll be able to see signs of wild life such as sloth bears, leopard, Jungle fowl and Wild boars.

This hill has huge boulders and will make you feel tiny in front of nature's marvel, you'll also be able to get an excellent view of the entire hill during the walk and also this place has mythological importance as it is believed that Rama & Seetha resided here during their exile at the same hill.""",
      length: "7.0",
      difficulty: "Modarate",
      duration: "4.0",
      start: "Gokula Goshale",
      end: "Kalyani",
      loc: Tags.Bangalore,
      time: "9:00 AM",
      imgs: [
        "assets/images/trek/trek3img1.png",
        "assets/images/trek/trek3img2.png",
        "assets/images/trek/trek3img3.png",
        "assets/images/trek/trek3img4.png",
      ]),
  Trek(
      id: 4,
      name: "Dhamane Tilari",
      location: 'Belagavi',
      description:
          """Dhamane Tilari trekking path is located in Belgaum district, this trek path starts at Dhamane anti poaching camp and ends at the same, such anti poaching camps are situated all across the forest to safeguard the jungle from the poachers.

This trial is a moderate one and is about 2kms in length and will take about 2 hours to cover the whole trail

This trail has a good number of tree species which includes taare, honne, kavalu, sissum, and other western ghat species. This trek route also has a very good number of bird and butterfly species.

If you are lucky you will encounter the great Indian hornbill along the trail and also there is a beautiful perennial waterfall along the trail.""",
      length: "2.0",
      difficulty: "Modarate",
      duration: "2.0",
      start: "Anti poaching camp Dhamane",
      end: "Anti poaching camp Dhamane",
      loc: Tags.Belagavi,
      time: "9:00 AM",
      imgs: [
        "assets/images/trek/trek4img1.png",
        "assets/images/trek/trek4img2.png",
        "assets/images/trek/trek4img3.png",
        "assets/images/trek/trek4img4.png",
      ]),
  Trek(
      id: 5,
      name: "Kada view point",
      location: "Belagavi",
      description:
          """Kada view point trekking path is in Belgaum district, this trek path starts at Dhamane anti poaching camp and ends at the same, such anti poaching camps are situated all across the forest to safeguard the jungle from the poachers.

This trial is a moderate one and is about 8 kms in length and will take about 5 hours to cover the whole trail.

lt is one of the most beautiful and long trek route, all along the route one can see Birds like Great Indian horn bill, Indian robin, orange minivet, various sun bird species, numerous butterflies and wild animals like Indain gaur, Leopard, spotted deer, civet cats, porcupine etc (Wild animal sighting is by luck only). Also on this route you can see a beautiful sunset point that will stay in your memory for the longest time.""",
      length: "8.0",
      difficulty: "Modarate",
      duration: "5.0",
      start: "Anti poaching camp Dhamane",
      end: "Anti poaching camp Dhamane",
      loc: Tags.Belagavi,
      time: "9:00 AM",
      imgs: [
        "assets/images/trek/trek6img1.png",
        "assets/images/trek/trek6img2.png",
        "assets/images/trek/trek6img3.png",
      ]),
  Trek(
      id: 6,
      name: "Tilari Back Water",
      location: "Belagavi",
      description:
          """Tilari Back Water trekking path is in Belgaum district, this trek path starts at Dhamane anti poaching camp and ends at the same, such anti poaching camps are situated all across the forest to safeguard the jungle from the poachers.

This trial is a moderate one and is about 5kms in length and will take about 3 hours to cover the whole trail

This trek route is along the back waters of Tilari river, you'll encounter both riverine and evergreen bird species along the trail.

If you are lucky you will get to spot smooth coated otters in the backwaters, this trail is a peak into the evergreen ecosystem of Western ghats.""",
      length: "5",
      difficulty: "Modarate",
      duration: "3.0",
      start: "Anti poaching camp Dhamane",
      end: "Anti poaching camp Dhamane",
      loc: Tags.Belagavi,
      time: "9:00 AM",
      imgs: [
        "assets/images/trek/trek5img1.png",
        "assets/images/trek/trek5img2.png",
        "assets/images/trek/trek5img3.png",
      ]),
  Trek(
      id: 7,
      name: "Rani Jhari",
      location: "Chikmagalur",
      description:
          """Rani Jhari is situated in Chikmagalur, this trail starts from Kala Bhyraveshwara temple, Balige and ends at Rani jhari peak.

Point of Interest along the trail :
Sunset point

Photography point

Direct sighting of many kind of birds

View of tea, coffee and rubber estates

Open shola grassland

Mountain peak""",
      length: "1.40",
      difficulty: "easy",
      duration: "1.0",
      start: "Kala Bhyraveshwara temple, Balige",
      end: "Rani jhari peak",
      loc: Tags.Chikkamagaluru,
      time: "6:30 AM",
      imgs: [
        "assets/images/trek/trek7img1.png",
        "assets/images/trek/trek7img2.png",
        "assets/images/trek/trek7img3.png",
        "assets/images/trek/trek7img4.png",
      ]),
  Trek(
      id: 8,
      name: "Ballalarayana Durga",
      location: "Chikmagalur",
      description:
          """Ballalarayana Durga is located in Chikmagalur district, the hills of Ballalarayana was once home to a majestic fort built during the 12th century. Today, all that remains are the periphery walls, arches, entrances overrun with vegetation

Ballalarayana Durga is located in Chikmagalur district, the hills of Ballalarayana was once home to a majestic fort built during the 12th century. Today, all that remains are the periphery walls, arches, entrances overrun with vegetation

Even though the fort doesn’t offer much in terms of architecture, it makes up for that big time with brilliant views. Once you have made your way to the top of the hill, just settle down into the carpet of green that covers the entire hill

Point of Interest along the trail :

Direct sighting of Grey Jungle fowl, Brahminy kite (If you are lucky)

Crowing call of jungle fowl

Fire lines

District Boundary cairn

Small stream

View of tea, coffee and rubber estates

Thick shola forest

Open shola grassland""",
      length: "3.10",
      difficulty: "easy",
      duration: '2.50',
      start: "Near Kala Bhyraveshwara temple, Balige",
      end: "Ballalarayanana durga fort",
      loc: Tags.Chikkamagaluru,
      time: "6:30 AM",
      imgs: [
        "assets/images/trek/trek8img1.png",
        "assets/images/trek/trek8img2.png",
        "assets/images/trek/trek8img3.png",
        "assets/images/trek/trek8img4.png",
      ]),
  Trek(
      id: 9,
      name: "Hampi heritage",
      location: "Bellary",
      description:
          """Hampi heritage trail is a treat for the visitors to explore the unique cultural architecture and rich natural heritage of the Hampi. This trail is a blend of cultural monuments and natural diversity.

The trail starts at theThalargatta Dwara (Gate). Along the trail on both the sides are the hillocks with rock boulders. These are an ideal habitat for sloth bear, leopard and multiple species of snakes.

Walking further one can see shrubs hosting variety of birds and butterfies. In the Hampi area there are about 256 bird species of which over 150 birds can be seen along the trail including yellow throated bulbul, sirkeer malkoha, brahminy kite etc.

You will come across multiple temple ruins along the walk, you'll walk through the paths of one of the greatest kingdoms of all time.

The trails ends at a place which is popularly known as Chakratheertha.""",
      length: "4.0",
      difficulty: "easy-moderate",
      duration: "2.50",
      start: "Vitala Temple",
      end: "Virupaksha",
      loc: Tags.Bellary,
      time: "6:30 AM",
      imgs: [
        "assets/images/trek/trek9img1.png",
        "assets/images/trek/trek9img2.png",
        "assets/images/trek/trek9img3.png",
      ]),
];
