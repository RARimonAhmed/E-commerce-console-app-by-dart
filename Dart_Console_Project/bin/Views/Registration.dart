import '../Controllers/LoginController.dart';
import '../Models/LoginModel.dart';
import '../Models/RegistrationModel.dart';
import 'Login.dart';
import 'ShapeDesign.dart';

late ShapeDesign shapedesign;
LoginController lC = new LoginController();
RegitrationModel regimodel = new RegitrationModel();
LoginView loginView = new LoginView();
LoginModel loginModel = new LoginModel();

class RegistrationView {
  late String name, pass, type = "";
  void registrationView() {
    shapedesign = new ShapeDesign("Registration");
    shapedesign.shapePattern();
  }

  void addValues(String type, String name, String password) {
    regimodel.showValue(name, password);
    regimodel.getName();
    regimodel.getPassword();
    lC.printingPattern(shapedesign.name, shapedesign.password);
    loginView.loginView(type, regimodel.name, regimodel.password);
  }
}
