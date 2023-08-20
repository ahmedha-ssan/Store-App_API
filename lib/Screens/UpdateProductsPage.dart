import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapp/Models/ProductModel.dart';
import 'package:storeapp/Widgets/CustomTextField.dart';
import '../Helper/ShowSnackBar.dart';
import '../Services/UpdateProductServices.dart';
import '../Widgets/CustomButton.dart';

class UpdateProductsPage extends StatefulWidget {
  UpdateProductsPage({super.key});
  static String id = 'updataPrdouct';

  @override
  State<UpdateProductsPage> createState() => _UpdateProductsPageState();
}

class _UpdateProductsPageState extends State<UpdateProductsPage> {
  String? desc, image, name;

  String? price;

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      product.image,
                      height: 200,
                      width: 100,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CustomTextField(
                  onChanged: (p0) {
                    name = p0;
                  },
                  hintText: 'Product Name',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  onChanged: (p0) {
                    desc = p0;
                  },
                  hintText: 'Description',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  onChanged: (p0) {
                    price = p0;
                  },
                  inputType: TextInputType.number,
                  hintText: 'Price',
                ),
                SizedBox(height: 15),
                CustomTextField(
                  onChanged: (p0) {
                    image = p0;
                  },
                  hintText: 'Image',
                ),
                SizedBox(
                  height: 35,
                ),
                CustomButon(
                  onTap: () async {
                    isloading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);

                      ShowSnackBar(context, 'Sucess');
                    } catch (e) {
                      ShowSnackBar(context, 'Error found');
                    }
                    isloading = false;
                    setState(() {});
                    ShowSnackBar(context, 'updated');
                  },
                  text: 'Update',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updataProduct(
      id: product.id,
      title: name == null ? product.title : name!,
      price: price == null ? product.price.toString() : price!,
      image: image == null ? product.image : image!,
      desc: desc == null ? product.description : desc!,
      category: product.category,
    );
  }
}
