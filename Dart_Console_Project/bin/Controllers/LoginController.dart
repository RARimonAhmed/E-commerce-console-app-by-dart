import '../Models/LoginModel.dart';
import '../Models/RegistrationModel.dart';
import '../Views/ShapeDesign.dart';

ShapeDesign shapeDesign = new ShapeDesign("Login");
RegitrationModel regModel = new RegitrationModel();
LoginModel loginModel = new LoginModel();

class LoginController {
//Code for pattern shape or creating box
  void printingPattern(String n, String p) {
    shapeDesign.shapePattern();
  }

  void loginWorking(String t, String n, String p) {
    while (true) {
      if (t.isNotEmpty && n.isNotEmpty && p.isNotEmpty) {
        if ((n.contains(shapeDesign.name)) &&
            (p.contains(shapeDesign.password))) {
          print("Congrets pass and name equals...");
          break;
        } else {
          print("Dont match something...lets try again.");
          shapeDesign.shapePattern();
          continue;
        }
      } else {
        print("Please give type, name, password.");
      }
    }
  }
}
