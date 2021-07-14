import 'package:cataloug_app/models/catalog.dart';
import 'package:cataloug_app/pages/home_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cataloug_app/widgets/Themes.dart';
import 'catalog_image.dart';
class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Products.items.length,
      itemBuilder: (context,index){
        final catalog = Products.items[index];
        return InkWell(
          onTap: ()=> Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context)=>HomeDetailPage(
                      catalog: catalog,
                  ),
              ),
          ),
            child: CatalogItem(catalog :catalog),
        );

      },
    );
  }
}
class CatalogItem extends StatelessWidget {
  final ProductAttribute catalog;

  const CatalogItem({Key? key, required this.catalog}) :  super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
              child: CatalogImage(
                  image: catalog.image
              ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catalog.name.text.lg.color(MyThemes.indigoColor).make(),
                catalog.desc.text.make(),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: Vx.mH8,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    ElevatedButton(
                      onPressed: (){},
                      child: "Buy".text.make(),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(MyThemes.indigoColor),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}