import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/header_with_searchBox.dart';
import 'package:flutter_application_1/components/title_with_more_btn.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'recommend_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommend",
            press: () {},
          ),
          RecommendPlants()
        ],
      ),
    );
  }
}
