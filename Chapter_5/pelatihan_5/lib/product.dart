class Product {
  int id = 0;
  String title = "";
  String description = "";
  String category = "";
  double price = 0;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> jsonData) {
    return Product(
        id: jsonData['id'],
        title: jsonData['title'],
        description: jsonData['description'],
        category: jsonData['category'],
        price: jsonData['price']);
  }

  static Map<String, dynamic> toMap (Product product) => {
    'id' : product.id,
    'title' : product.title,
    'description' : product.description,
    'category' : product.category,
    'price' : product.price,
  };
}
