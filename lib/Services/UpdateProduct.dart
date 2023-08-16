import '../Helper/api.dart';
import '../Models/ProductModel.dart';

class UpdateProduct {
  Future<ProductModel> updataProduct({
    required String title,
    required String price,
    required String image,
    required String desc,
    required String category,
  }) async {
    Map<String, dynamic> data = await api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}
