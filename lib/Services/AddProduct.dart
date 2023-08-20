import 'package:storeapp/Helper/api.dart';
import 'package:storeapp/Models/ProductModel.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String image,
    required String desc,
    required String category,
  }) async {
    // ignore: missing_required_param
    Map<String, dynamic> data = await Api().post(
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
