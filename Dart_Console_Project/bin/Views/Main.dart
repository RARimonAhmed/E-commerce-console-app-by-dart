import 'dart:io';

import '../Controllers/Login.dart';
import '../Models/LoginModel.dart';

void main() {
  LoginModel logModel = new LoginModel();

  Login l = new Login();
  late String name, pass;
  print("Here is your shape output...");
  againcode:
  while (true) {
    print("Please enter your name : ");
    name = stdin.readLineSync()!;
    print("Please enter your password : ");
    pass = stdin.readLineSync()!;
    if (name.isNotEmpty && pass.isNotEmpty) {
      logModel.showValue(name, pass);
    } else {
      print("Please give type, name, password.");
      continue againcode;
    }
    if (name == "X") {
      break;
    }
  }
  logModel.getName();
  logModel.getPassword();
  l.printingPattern(logModel.name, logModel.password);
}
