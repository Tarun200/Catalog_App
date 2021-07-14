import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cataloug_app/widgets/Themes.dart';
class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "GameStore".text.xl4.bold.color(MyThemes.indigoColor).make(),
        "Trending PS4 Games".text.bold.color(MyThemes.blackColor).make(),
      ],
    );
  }
}