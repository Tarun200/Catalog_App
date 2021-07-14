import 'dart:convert';
import 'package:cataloug_app/utils/routes.dart';
import 'package:cataloug_app/widgets/Drawer.dart';
import 'package:cataloug_app/widgets/Themes.dart';
import 'package:cataloug_app/widgets/home_widgets/catalog_header.dart';
import 'package:cataloug_app/widgets/home_widgets/catalog_list.dart';
import 'package:flutter/material.dart';
import 'package:cataloug_app/models/catalog.dart';
import 'package:cataloug_app/widgets/product_widget.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
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
      backgroundColor: MyThemes.creamColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyThemes.indigoColor,
        onPressed: (){
          Navigator.pushNamed(context, MyRoutes.CartRoute);
        },
        child: Icon(
          CupertinoIcons.shopping_cart,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CatalogHeader(),
              if(Products.items!= null && Products.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                ),
            ],
          ),
        ),
      ),

    );
  }
}




