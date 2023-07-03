import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimentions.getHeight(26)),
        SizedBox(height: Dimentions.getHeight(5)),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                );
              }),
            ),
            const SizedBox(width: 10),
            SmallText(text: "4.5"),
            const SizedBox(width: 10),
            SmallText(text: "12847"),
            const SizedBox(width: 10),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimentions.getHeight(20)),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              text: "Normal",
              icon: Icons.circle,
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              text: "1.7km",
              icon: Icons.location_on,
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              text: "32min",
              icon: Icons.access_time_rounded,
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
