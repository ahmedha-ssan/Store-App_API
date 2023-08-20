import 'package:storeapp/Models/ProductModel.dart';

import '../Helper/api.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    // http.Response response = await http.get(
    //   Uri.parse(''),
    // );
    List<dynamic> data = await Api()
        // ignore: missing_required_param
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

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
