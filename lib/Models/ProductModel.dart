class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;
  ProductModel({
    required this.description,
    required this.id,
    required this.image,
    required this.price,
    required this.title,
    required this.rating,
  });
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      description: jsonData['description'],
      id: jsonData['id'],
      image: jsonData['image'],
      price: jsonData['price'],
      title: jsonData['title'],
      rating: RatingModel.fromjson(
        jsonData['rating'],
      ),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({
    required this.count,
    required this.rate,
  });
  factory RatingModel.fromjson(jsonData) {
    return RatingModel(
      count: jsonData['count'],
      rate: jsonData['rate'],
    );
  }
}
