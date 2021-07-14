import 'package:flutter/material.dart';
import 'package:cataloug_app/models/catalog.dart';
 class ProductWidget extends StatelessWidget {
  final ProductAttribute item;

  const ProductWidget({Key? key, required this.item}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),

      ),
      child: ListTile(
        onTap: (){
          print("Product Clicked");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
            "\$${item.price}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.indigoAccent,
          ),
        ),
      ),
    );
  }
}
