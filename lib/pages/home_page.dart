import 'dart:convert';
import 'package:cataloug_app/widgets/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:cataloug_app/models/catalog.dart';
import 'package:cataloug_app/widgets/product_widget.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData() async{
     final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
   final decodedData = jsonDecode(catalogJson);
   var productsData  = decodedData["products"];
  Products.items = List.from(productsData).map<ProductAttribute>((prod) => ProductAttribute.fromMap(prod)).toList();
  setState(() {});


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),

      body: ListView.builder(
          itemCount: Products.items.length,
          itemBuilder: (context,index)
          {
            return ProductWidget(
                item: Products.items[index],
            );
          },
      ),
      drawer: MyDrawer(),

    );
  }
}
