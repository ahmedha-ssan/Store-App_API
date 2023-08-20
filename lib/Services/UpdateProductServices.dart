import '../Helper/api.dart';
import '../Models/ProductModel.dart';

class UpdateProductService {
  Future<ProductModel> updataProduct({
    required String title,
    required String price,
    required String image,
    required String desc,
    required String category,
    required int id,
  }) async {
    print(id);
    // ignore: missing_required_param
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
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
