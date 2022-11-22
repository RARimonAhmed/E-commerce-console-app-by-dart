class ProductModel {
  double price = 0, availibility = 0, choiceOption = 0;
  String productName = "";
  ProductModel(double price, double availibility, double choiceOption,
      String productName) {
    this.price = price;
    this.availibility = availibility;
    this.choiceOption = choiceOption;
    this.productName = productName;
  }
  double setPrice(double price) {
    this.price = price;
    return this.price;
  }

  double getPrice() {
    return this.price;
  }

  double setAvailibility(double availibility) {
    this.availibility = availibility;
    return this.availibility;
  }

  double getAvailibility() {
    return this.availibility;
  }

  double setChoiceOption(double choiceOption) {
    this.choiceOption = choiceOption;
    return this.choiceOption;
  }

  double getChoiceOption() {
    return this.choiceOption;
  }

  String setProductName(String productName) {
    this.productName = productName;
    return this.productName;
  }

  String getproductName() {
    return this.productName;
  }
}
