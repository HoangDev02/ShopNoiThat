
class Product{
  String id;
  String name;
  String description;
  String img;
  String price;

  Product({
    this.id ='',
    required this.name,
    required this.description,
    required this.img,
    required this.price
  });
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'price': price,
    'img': img
  };

  static Product fromJson(Map<String , dynamic> json) =>
      Product(id: json['id'],name: json['name'], description: json['description'], img: json['img'], price: json['price']);
}