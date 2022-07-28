import 'package:eco_trip/constants/config.dart';
import 'package:eco_trip/main/Trekking_Details_page/Widgets/back_button.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  String history =
      """ On 15th August, 2013 the Karnataka state cabinet approved the proposal to set up the Karnataka eco tourism development board. The forest minister of Karnataka would serve as the chairman. The initiative would help the government immensely in protecting the wildlife, creating awareness about it, encouraging eco-tourism, forest safaris and also prevent damage to eco-system in the name of tourism.

The total contribution of Travel & Tourism to the Indian GDP was INR 6,385.1 bn (6.6% of GDP) in 2012 and is forecast to rise by 7.3% in 2013, and to rise by 7.9% pa to INR 14,722.3 bn in 2023.

Considering that multitude of tourists visiting India and the domestic tourists do visit destinations that fall in the categories of Eco tourism and nature based tourism; it is pertinent that studies in the sector will add value and bring about positive growth and development if approached from a 360° angle. Karnataka has been a forefront of many aspects of tourism promotion and off late there has been a qualitative churn and an intensive focus on Eco tourism. The creation of the Karnataka Eco Tourism Development Board (KEDB) in 2013 has provided a fillip to bring in a new structure, a policy, create guidelines and frameworks, awareness and education, and provide opportunities for training and capacity building amongst the stakeholders, besides standards and certification. """;
  String objective =
      """1. To create awareness regarding the conservation of forests and wildlife amongst the people in general and children and youth, in particular.
2. To encourage and promote tourism activities in the country in general and the State of Karnataka, in particular.
3. To encourage local community involvement in ecotourism and provide greater employment opportunities and economic benefits to the local people.
4. To assist in formulation of policies, laws and guidelines for organized development of ecotourism activities in the state.
5. To conduct research and impact-studies in ecotourism areas.
6. To promote ecotourism as a front line non consumptive activity of Forest Department.
7. To develop good practices to be followed by ecotourism operators.
8. To standardize and operate certification of ecotourism operators.
9. To train and certify nature guides.
10. To produce literature and electronic media material required for nature education and ecotourism promotion.
11. To facilitate linkages between public and private operators n the cause of conservation of wildlife.
12. To coordinate and liaise with national /international bodies, experts and funding agencies and receive contribution and funds from Government of India, State Government, National and International funding agencies etc.
13. To encourage local community involvement in ecotourism.
14. To maintain and facilitate ecotourism activities inside the parks and forest areas.
15. To develop trekking trails and operate wildlife safaris in the "Protected Areas".
16. To encourage public-private partnerships (PPP) in the area of ecotourism, wherever the law permits.  """;

  bool count = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            aboutusimg(),
            layer(),
            content(),
            Positioned(
                top: Config().deviceHeight(context) * 0.08,
                right: Config().deviceHeight(context) * 0.03,
                child: const Text(
                  "About Us",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                )),
            SafeArea(
              child: CustomBackButton(onTap: () {
                Navigator.pop(context);
              }),
            ),
          ],
        ),
      ),
    );
  }

  aboutusimg() {
    return Container(
      child: Column(children: [
        Container(
            height: Config().deviceHeight(context) * 0.7,
            width: Config().deviceWidth(context),
            child: const Image(
              image: AssetImage("assets/images/aboutus.jpg"),
              fit: BoxFit.cover,
            )),
      ]),
    );
  }

  layer() {
    return Container(
      height: Config().deviceHeight(context),
      width: Config().deviceWidth(context),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent.withOpacity(0.6),
          Colors.transparent.withOpacity(0.6),
          Colors.transparent.withOpacity(0.7),
          Colors.transparent.withOpacity(0.7),
          Colors.black,
          Colors.black,
          Colors.black,
        ],
      )),
    );
  }

  content() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: Config().deviceHeight(context) * 0.4,
            ),
            const Text(
              "About Karnataka Ecotourism",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            index(count),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onHorizontalDragStart: (sda) {
                setState(() {
                  count = !count;
                });
              },
              child: Container(
                width: Config().deviceWidth(context) * 0.9,
                child: Column(
                  children: [
                    !count
                        ? const Text(
                            "The objectives of the Karnataka Eco tourism board would primarily be :",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        : Container(),
                    !count
                        ? const SizedBox(
                            height: 20,
                          )
                        : Container(),
                    Text(
                      count ? history : objective,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  index(bool val) {
    return Container(
        child: Row(
      children: [indexCell(val), indexCell1(val)],
    ));
  }

  indexCell(bool val) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
      child: CircleAvatar(
        radius: 10,
        backgroundColor: val ? Colors.white : Colors.black,
        child: const CircleAvatar(
          radius: 8,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 5,
          ),
        ),
      ),
    );
  }

  indexCell1(bool val) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
      child: CircleAvatar(
        radius: 10,
        backgroundColor: !val ? Colors.white : Colors.black,
        child: const CircleAvatar(
          radius: 8,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 5,
          ),
        ),
      ),
    );
  }
}
