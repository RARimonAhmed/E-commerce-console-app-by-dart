import '../Controllers/LoginController.dart';
import '../Models/RegistrationModel.dart';
import 'Login.dart';
import 'ShapeDesign.dart';

late ShapeDesign shapedesign;
LoginController lC = new LoginController();
RegitrationModel regimodel = new RegitrationModel();
LoginView loginView = new LoginView();

class RegistrationView {
  late String name, pass, type = "";
  void registrationView() {
    shapedesign = new ShapeDesign("Registration");
    shapedesign.shapePattern();
    lC.printingPattern(shapedesign.name, shapedesign.password);
    loginView.loginView(
        shapedesign.type, shapedesign.name, shapedesign.password);
  }
}
