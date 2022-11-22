import 'dart:io';
import '../Controllers/LoginController.dart';
import 'Login.dart';
import 'Registration.dart';

RegistrationView registrationView = new RegistrationView();

class ShapeDesign {
  int coderun = 1;
  double price = 0, availibility = 0, choiceOption = 0;
  String password = "", name = "", type = "", pageName = "", productName = "";
  ShapeDesign(String pageName) {
    this.pageName = pageName;
  }
  //Code for pattern shape or creating box
  void shapePattern() {
    print(
        "**Note : Use 1 letter for exit.\nPlease put your type,name and password must be at least up to 4 char.");
    againCode:
    for (int i = 1; i <= 20; i++) {
      for (int j = 1; j <= 20; j++) {
        if (i == 1 || i == 20 || j == 1) {
          stdout.write("** ");
        } else if (i != 1 || i != 20 || j != 1 || j != 20) {
          if (pageName == "Login" || pageName == "Registration") {
            stdout.writeln("\n**\t\t\t$pageName Here...");
            stdout.writeln("**\t\t\tChoice Option : ");
            stdout.writeln("**\t\t1.Admin\t\t\t2.User : ");
            stdout.write("**\t\tPlease enter your type : ");
            type = stdin.readLineSync()!;
            stdout.write("**\t\tPlease enter your name : ");
            name = stdin.readLineSync()!;
            stdout.write("**\t\tPlease enter your password : ");
            password = stdin.readLineSync()!;
          } else if (pageName == "Production") {
            name = "Rimon";
            password = "rimon";
            type = "user";
            stdout.write("**\t\tPlease enter your product name : ");
            productName = stdin.readLineSync()!;
            stdout.write(
                "**\t\tPlease enter how many pices do you want to buy : ");
            choiceOption = double.parse(stdin.readLineSync()!);
          }
          if (type.length == 1 || name.length == 1 || password == 1) {
            break againCode;
          } else if (type.isNotEmpty &&
              name.isNotEmpty &&
              password.isNotEmpty) {
            if (type.length <= 3 || name.length <= 3 || password.length <= 3) {
              print(
                  "**\t\tPlease put your type,name and password must be at least up to 3 char");
              continue againCode;
            } else {
              if (pageName == "Registration") {
                print(choiceOption);
                stdout.writeln("**\t\t$name you're logged here as a : $type");
                registrationView.addValues(type, name, password);
                break againCode;
              } else if (pageName == "Login") {
                print(choiceOption);
                stdout.writeln("**\t\t$name you're logged here as a : $type");
                loginController.addValues(type, name, password);
                break againCode;
              } else if (pageName == "Production") {
                print("Its production page.");
              }
            }
          } else {
            print(choiceOption);
            print("**\t\tPlease give type, name and password");
            continue againCode;
          }
        } else {
          stdout.write(" ");
        }
      }
    }
  }
}
