import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:lapasar_flutter/api.dart';
import 'package:lapasar_flutter/productmodel.dart';

class MainController extends GetxController {
  final List<ProductList> _initialProduct = [];
  final RxList<ProductList> product = <ProductList>[].obs;

  @override
  void onInit() {
    super.onInit();

    productList().then((value) {
      _initialProduct.addAll(value);
      product.value = value;
    }).whenComplete(() {
      product.refresh();
    });
  }

  Future<void> refresh() async {
    final r = await productList();
    product.value = r;

    product.refresh();
  }

  Future<List<ProductList>> productList() async {
    final List<ProductList> list = [];

    product.value = list;

    try {
      final result = await Api.getProductList();
      result.forEach((res) {
        list.add(ProductList.fromJson(res));
      });
    } catch (err) {
      print(err);
    }

    print("${list.length} + update");

    return list;
  }
}
