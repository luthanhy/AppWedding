import 'package:get/get.dart';
import 'package:appwedding/models/product/product_cart.dart';
import 'package:appwedding/services/api_service.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  ApiService apiService = ApiService();

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    isLoading.value = true;
    try {
      List<ProductModel> fetchedProducts = await apiService.getAllProducts();
      products.assignAll(fetchedProducts);
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
