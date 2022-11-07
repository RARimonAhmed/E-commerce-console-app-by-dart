import 'dart:io';

import '../Models/RegistrationModel.dart';

class RegistrationView extends RegitrationModel {
  late String name, pass;
  void registrationView() {
    print("Registration Page.");
    print("Use 1 letter for exit.");
    againcode:
    while (true) {
      print("Please enter your name : ");
      name = stdin.readLineSync()!;
      print("Please enter your password : ");
      pass = stdin.readLineSync()!;
      if (name.length == 1) {
        name = "";
        pass = "";
        break;
      } else if (name.isNotEmpty && pass.isNotEmpty) {
        printingPattern(name, pass);
        showValue(name, pass);
      } else {
        print("Please give type, name, password.");
        continue againcode;
      }
    }
  }
}
