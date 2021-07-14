import 'package:cataloug_app/models/catalog.dart';
import 'package:cataloug_app/widgets/Themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cataloug_app/widgets/Themes.dart';
class HomeDetailPage extends StatelessWidget {
   final ProductAttribute catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyThemes.creamColor,
      bottomNavigationBar:  Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mH8,
          children: [
            "\$${catalog.price}".text.bold.xl3.purple800.make(),
            ElevatedButton(
              onPressed: (){},
              child: "Buy".text.xl.make(),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(MyThemes.indigoColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
            ).wh(80, 40),
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
                child: Image.network(
                    catalog.image
                ),
            ).h40(context),
            Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4.color(MyThemes.indigoColor).make(),
                        catalog.desc.text.xl.make(),
                        "A video game or computer game is an electronic game that involves interaction with a  input device – such as a joystick, controller, keyboard, or motion sensing device – to generate visual feedback.".text.make().p16(),

                      ],
                    ).py64(),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
