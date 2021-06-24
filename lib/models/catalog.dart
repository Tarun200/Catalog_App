class Products
{
  static List<ProductAttribute> items =[
    ProductAttribute(
      id: 100,
      name: "DarkSouls 3",
      desc: "Action Game",
      price: 900,
      color: "#C29467",
      image: "https://th.bing.com/th/id/OIP.s-t-3jDNN17-8fQuj7oHjQHaJO?pid=ImgDet&rs=1")
  ];
}


class ProductAttribute
{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  ProductAttribute({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
  factory ProductAttribute.fromMap(Map<String,dynamic> map)
  {
    return ProductAttribute(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],


    );

  }
  toMap()=>{
    "id" : id,
    "name" : name,
    "desc" : desc,
    "price" : price,
    "color" : color,
    "image" : image,
  };

}