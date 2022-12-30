import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class ViewAllWidget extends StatelessWidget {
  final String title;
  const ViewAllWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.headLineStyle2),
        InkWell(
          onTap: (() {
            print("Hotels Tapped");
          }),
          child: Text("View All",
              style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
        )
      ],
    );
  }
}
