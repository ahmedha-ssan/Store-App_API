import 'package:storeapp/Helper/api.dart';
import 'package:storeapp/Models/ProductModel.dart';

class GetAllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(
          data[i],
        ),
      );
    }
    return productsList;
  }
}
