class Product {
  final String id;
  final String name;
  final String categoryId;
  final int quantity;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.quantity,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'categoryId': categoryId,
      'quantity': quantity,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      categoryId: map['categoryId'],
      quantity: map['quantity'],
      price: map['price'],
    );
  }
}
