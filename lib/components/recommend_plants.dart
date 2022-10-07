import 'package:flutter/material.dart';

import '../constants.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            title: "May Man",
            country: "Viet Nam",
            press: () {},
            price: 400,
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            title: "May Man",
            country: "Viet Nam",
            press: () {},
            price: 400,
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            title: "May Man",
            country: "Viet Nam",
            press: () {},
            price: 400,
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    required this.title,
    required this.country,
    required this.image,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String title, country, image;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: (() => press),
            child: Container(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.2)),
                ]),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: country.toUpperCase(),
                            style: Theme.of(context).textTheme.button?.copyWith(
                                color: kPrimaryColor.withOpacity(0.5)))
                      ]),
                    ),
                    const Spacer(),
                    Text(
                      '\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: kPrimaryColor),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
