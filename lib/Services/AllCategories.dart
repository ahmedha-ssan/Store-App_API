import 'package:storeapp/Helper/api.dart';

class allCategories {
  Future<List<dynamic>> getAllCategores() async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
