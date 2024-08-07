class ProductModal {
  late List<Product> product=[];

  ProductModal(this.product);
  factory ProductModal.fromJson(Map m1)
  {
    return ProductModal((m1['product']as List).map((e)=>Product.fromJson(e)).toList());
  }
}

class Product {
  late int id;
  late String title, description, category, image;
  late double price;
  late Rating rating;

  Product(
      {
        required this.id,
     required  this.title,
     required  this.description,
     required  this.category,
     required this.price,
      required this.rating
      });
  factory Product.fromJson(Map m1)
  {
    return Product(id: m1['id'], title: m1['title'], description: m1['description'], category: m1['category'], price:m1 ['price'], rating: Rating.fromJson(m1['rating']));
  }
}

class Rating {
  late double rate;
  late int count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map m1) {
    return Rating(rate: m1['rate'], count: m1['count']);
  }
}
