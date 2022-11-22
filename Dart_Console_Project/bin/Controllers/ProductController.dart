import '../Models/ProductModel.dart';

ProductModel productModel = new ProductModel(0, 0, 0, "");

class ProductController {
  double taka = 1;
  int count = 0;
  List<String> productNameList = [
    "Banana",
    "Mango",
    "Litchi",
    "Apple",
    "Orange",
    "Grapes",
    "Dates",
    "Pumkin",
    "Gourd",
    "Bean",
    "Pour-Out",
    "Lemon",
    "Potato",
    "Ceucumber",
    "Cocacola",
    "Clemon",
    "Dew",
    "Tiger",
    "Icecream",
    "Fanta",
    "Onion",
    "Garlic",
    "Millet",
    "Maize",
    "Salt",
    "Urad dal"
  ];
  List<double> priceList = [
    5,
    20,
    2,
    35,
    24,
    25,
    27,
    21,
    20,
    30,
    50,
    40,
    12,
    15,
    18,
    14,
    16,
    7,
    8,
    60,
    15,
    24,
    21,
    27,
    28,
    30
  ];
  List<double> availibilityList = [
    15,
    14,
    7,
    88,
    94,
    21,
    35,
    63,
    54,
    78,
    45,
    50,
    12,
    35,
    78,
    57,
    69,
    25,
    36,
    45,
    47,
    85,
    21,
    20,
    24,
    25
  ];
  void addItem(ProductModel productModel) {
    productNameList.addAll(<String>[productModel.productName].toList());
    priceList.addAll(<double>[productModel.price].toList());
    availibilityList.addAll(<double>[productModel.availibility].toList());
  }

  void sellItem(ProductModel productModel) {
    for (int i = 0; i <= productNameList.length - 1; i++) {
      if (productNameList[i].toString() == productModel.productName) {
        count--;
        if (availibilityList[i] < productModel.choiceOption) {
          print("Out of stock.");
          break;
        } else {
          availibilityList[i] = availibilityList[i] - productModel.availibility;
          sellCalculation(priceList[i], productModel.choiceOption);
        }
      }
    }
    if (count == 0) {
      print("Items is not found.");
    }
  }

  void sellCalculation(double price, double choiceOption) {
    taka = price * choiceOption;
    print("Your bill is = $taka takas only.");
  }
}
