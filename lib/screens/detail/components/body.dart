import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Column()),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/img.png'))),
            )
          ],
        )
      ],
    );
  }
}
