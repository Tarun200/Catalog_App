class Products
{
  static List<ProductAttribute> items = [
  ProductAttribute(
  id: "1",
  name: "DarkSouls 3",
  desc: "Action",
  price: "900",
  color: "#C29467",
  image: "https://www.gamereleasedates.net/images/covers/ps4/cover-ps4-dark-souls-iii.jpg")

  ];
}


class ProductAttribute
{
  final String id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  ProductAttribute({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
  factory ProductAttribute.fromMap(Map<String,dynamic> map)
  {
    return ProductAttribute(
      id: map["id"].toString(),
      name: map["name"],
      desc: map["desc"],
      price: map["price"].toString(),
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