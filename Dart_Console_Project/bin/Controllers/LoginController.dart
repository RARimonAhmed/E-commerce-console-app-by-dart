import '../Models/LoginModel.dart';
import '../Views/ProductView.dart';
import '../Views/ShapeDesign.dart';

ShapeDesign shapeDesign = new ShapeDesign("Login");
LoginModel loginModel = new LoginModel();
ProductView productView = new ProductView();
late ShapeDesign shapeOfChoice;

class LoginController {
  String name = "", password = "", type = "";
  void printingPattern(String n, String p) {
    print(shapeDesign.choiceOption);
    shapeDesign.shapePattern();
  }

  void addValues(String type, String name, String password) {
    loginModel.showlogValue(name, password);
    loginModel.getlogName();
    loginModel.getlogPassword();
    this.type = type;
    this.password = password;
    this.name = name;
  }

  void loginWorking(String type, String n, String p) {
    while (true) {
      if (type.isNotEmpty && n.isNotEmpty && p.isNotEmpty) {
        if ((n.contains(name)) && (p.contains(password))) {
          print("Congrets");
          productView.displayProductView();
          shapeOfChoice = new ShapeDesign(type);
          break;
        } else {
          print("Dont match something...lets try again.");
          shapeDesign.shapePattern();
          continue;
        }
      } else {
        print("Please give type, name, password.");
        break;
      }
    }
  }
}
