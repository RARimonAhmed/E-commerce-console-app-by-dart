import 'dart:io';
import '../Controllers/LoginController.dart';
import '../Models/LoginModel.dart';
import '../Models/RegistrationModel.dart';

LoginModel loginModel = new LoginModel();
LoginController logCon = new LoginController();
RegitrationModel regitrationModel = new RegitrationModel();

class ShapeDesign {
  int coderun = 1;
  String password = "", name = "", type = "", pageName = "";
  ShapeDesign(String pageName) {
    this.pageName = pageName;
  }
  void shapePattern() {
    print(
        "Note : Use 1 letter for exit.\nPlease put your type,name and password must be at least up to 4 char.");
    againCode:
    for (int i = 1; i <= 20; i++) {
      for (int j = 1; j <= 20; j++) {
        if (i == 1 || i == 20 || j == 1) {
          stdout.write("** ");
        } else if (i != 1 || i != 20 || j != 1 || j != 20) {
          stdout.writeln("\n**\t\t\t$pageName Here...");
          stdout.writeln("**\t\t\tChoice Option : ");
          stdout.writeln("**\t\t1.Admin\t\t\t2.User : ");
          stdout.writeln("**\t\tPlease enter your type : ");
          type = stdin.readLineSync()!;
          stdout.writeln("**\t\tPlease enter your name : ");
          name = stdin.readLineSync()!;
          stdout.write("**\t\tPlease enter your password : ");
          password = stdin.readLineSync()!;
          if (type.length == 1 || name.length == 1 || password == 1) {
            break againCode;
          } else if (type.isNotEmpty &&
              name.isNotEmpty &&
              password.isNotEmpty) {
            if (type.length <= 3 || name.length <= 3 || password.length <= 3) {
              print(
                  "Please put your type,name and password must be at least up to 3 char");
              continue againCode;
            } else {
              if (coderun == 1) {
                stdout.writeln("$name you're logged here as a : $type");
                coderun++;
                regitrationModel.showValue(name, password);
                regitrationModel.getName();
                regitrationModel.getPassword();
                break againCode;
              } else {
                loginModel.showlogValue(name, password);
                loginModel.getlogName();
                loginModel.getlogPassword();
                break againCode;
              }
            }
          } else {
            print("Please give type, name and password");
            continue againCode;
          }
        } else {
          stdout.write(" ");
        }
      }
    }
  }
}
