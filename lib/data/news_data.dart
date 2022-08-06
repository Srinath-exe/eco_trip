class News {
  News(
      {required this.title,
      required this.description,
      this.itinerary,
      required this.imgs});

  String title;
  String description;
  String? itinerary;

  List<String> imgs;
}

List<News> news = [
  News(
      title: "Karnataka Bird Festival 2022 - Madikeri",
      description:
          """Nestled between the lush Western Ghats and the plains, Coorg and Madikeri is home to exotic and migratory birds and provide wonderful pathways for birds. There are more than 300 species of birds in the Western Ghats, of which many are migratory visitors. It’s surely a paradise for bird watchers and nature enthusiasts. Karnataka Forest Department along with the Karnataka Ecotourism Development Board is soon hosting the Karnataka Bird Festival from April 8th to 10th of 2022. Every year, a unique bird and biodiversity are chosen in order to raise more awareness on bird conservation. This also nurtures an interest in young wildlife enthusiasts to learn and love birds and their habitat. More than 6 trails are chosen for this year’s festival.

The mascot bird this year is Black Baza. Black Baza is a migratory bird from Eastern Himalayas, China and South East Asia. Brahamagiri, Pushpagiri, Talakaveri wildlife sanctuaries and the Nagarhole National Park are prominent destinations here for every bird lover. From Kingfishers to Srilankan Frogmouths along the streams to Orange Thrush in plantations, the hills and streams of Kodagu won’t disappoint your eyes. Naturalists here will make this bird walks more interesting for you and your binoculars and cameras.

Listening to their beautiful and unique calls and watching their vibrant feathers are bound to lift your spirits on any day! You could be an amateur or an ardent naturalist, come join the Festival of Plumes!""",
      itinerary: """Registration
Limited seats available on first come first serve basis
Interested can register, the registrations will be closed in a week.
The registration fees includes accommodation on twin sharing basis, food ,kit bag, and local transportation (pick up and drop to bird trails )""",
      imgs: [
        "assets/images/news/news1.png"
            "assets/images/news/news1sub1.png"
            "assets/images/news/news1sub2.png"
            "assets/images/news/news1sub3.png"
      ]),
  News(
      title: "Coffee Table Book",
      description:
          """The Karnataka Forest Department has come out with a Coffee Table book. The book focuses on the lives of the frontline staff of the KFD. This book is dedicated to the Martyrs, retired, and serving forest personnel.

The Karnataka Forest Department is a pioneering department especially in the conservation of forests and wildlife. They are the torchbearers for setting standards in wildlife conservation and protection. The book will support the cause of the conservation of forests and wildlife and also provide the public at large to understand the lives and challenges of the frontline staff of the Karnataka Forest Department.

The book authored by Vijay Mohan Raj IFS is over 220 pages which showcase some of the best photographs of the staff at work in various forest landscapes of Karnataka. The book has a very high resolution of medium format photography work done by award-winning photographers. The photographs were specially commissioned by the Karnataka Forest Department so that there is continuity in visual aesthetic and appeal.

The book is a showcase of the journey, right from the glorious past of the Forest Department, right from the days of the Maharajas of Mysore to the present day. The book showcases the challenges and the lives of the frontline staff of the Karnataka Forest Department.""",
      imgs: ["assets/images/news/news2.png"]),
  News(
      title: "Karnataka Bird Festival 2021",
      description:
          """Biligiri Ranganathaswamy Temple Tiger Reserve popularly known as BR Hills is a wildlife/bird watching destination being heaven for a variety of wild animals and birds. The deciduous, evergreen, and grassland vegetation types existing here offer refuge to a variety of wildlife and birds.

More than 270 species of birds exist here, including the Black Eagle, Rufous-bellied Eagle, Scarlet Minivet, Blue-bearded Bee-eater, Velvet-Fronted Nuthatch, Lorikeet, Plum-headed Parakeet, Asian Paradise Flycatcher, and Malabar Whistling Thrush among numerous others, making it an ornithologist’s delight.

The seventh edition of the Karnataka Bird Festival conducted by the Karnataka Ecotourism Development Board in association with the Karnataka Forest Department and Jungle Lodges & Resorts is going to be held in BRT Tiger Reserve on 5th, 6th, and 7th of January 2021. The entries for the event are limited so kindly make the booking as early as possible. A list of hotels that are close to the bird festival venue is shared below along with their contact details. The detailed itinerary of the event will be shared shortly.

Note:
It is the responsibility of registered users to reach the venue at the scheduled time. Registered users are requested to bring water bottles and binoculars during the event. Kindly make your own arrangements for such equipment and other important necessities.

The events consisting of speakers, presentations, guided bird walk etc will be at BR Hills.

Also, the registered users have to follow the Covid protocols as per the government guidelines during the event.

Stay Details
These are suggested hotels.
We do not provide any booking for the hotels.
Please contact the below-mentioned numbers and confirm your hotel booking.
One can also book any other hotel of their choice.""",
      imgs: [
        "assets/images/news/news3.png"
            "assets/images/news/news3sub1.png"
            "assets/images/news/news3sub2.png"
            "assets/images/news/news3sub3.png"
      ]),
  // News(title: title, description: description, imgs: imgs)
];
