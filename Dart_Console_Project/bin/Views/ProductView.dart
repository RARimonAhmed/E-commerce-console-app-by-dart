import '../Controllers/ProductController.dart';
import '../Models/LoginModel.dart';
import '../Models/ProductModel.dart';
import 'ShapeDesign.dart';

ProductController productController = new ProductController();
ProductModel productModel = new ProductModel(0, 0, 0, "");
LoginModel loginModel = new LoginModel();
ShapeDesign shapeDesign = new ShapeDesign("Production");

class ProductView {
  void displayProductView() {
    shapeDesign.shapePattern();
  }

  void showInfo(String type, String productName, double choiceOption) {
    print(type);
    // if (type.toLowerCase() == "admin".toLowerCase()) {
    productModel.setProductName(productName);
    productModel.setChoiceOption(choiceOption);
    productModel.getproductName();
    productModel.getChoiceOption();
    productController.sellItem(productModel);
    productController.addItem(productModel);
    // }
    // ProductModel productModel = new ProductModel(20, 150, 5, "Apple");
    // productController.sellItem(productModel);
    // productModel.setPrice(20);
    // productModel.setAvailibility(20);
    // productModel.setProductName("Cake");
    // productController.addItem(productModel);
    // productModel.setChoiceOption(5);
    // productController.sellItem(productModel);
  }
}
