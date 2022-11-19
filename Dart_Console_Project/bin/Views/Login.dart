import '../Controllers/LoginController.dart';

LoginController loginController = new LoginController();

class LoginView {
  late String type, name, password;
  void loginView(String type, String name, String pass) {
    loginController.loginWorking(type, name, pass);
  }
}
