import 'package:storeapp/Helper/api.dart';

class allCategories {
  Future<List<dynamic>> getAllCategores() async {
    List<dynamic> data =
        await api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
