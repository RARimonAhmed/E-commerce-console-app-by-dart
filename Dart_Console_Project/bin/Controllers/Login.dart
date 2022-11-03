import 'dart:io';
import '../Models/LoginModel.dart';

class Login {
  String password = "", name = "", type = "";
  LoginModel logobject = new LoginModel();
  int coderun = 1;
  //Code for pattern shape or creating box
  void printingPattern(String n, String p) {
    for (int i = 1; i <= 20; i++) {
      for (int j = 1; j <= 20; j++) {
        if (i == 1 || i == 20 || j == 1) {
          stdout.write("** ");
        } else if (i != 1 || i != 20 || j != 1 || j != 20) {
          againcode:
          if (coderun <= 1) {
            stdout.writeln("\t\t\tLogin Here...");
            stdout.writeln("**\t\t\tChoice Option : ");
            stdout.writeln("**\t\t1.Admin\t\t\t2.User");
            stdout.writeln("**\t\tPlease enter your type : ");
            type = stdin.readLineSync()!;
            stdout.writeln("**\t\tPlease enter your name : ");
            name = stdin.readLineSync()!;
            stdout.write("**\t\tPlease enter your password : ");
            password = stdin.readLineSync()!;
            if (type.isNotEmpty && name.isNotEmpty && password.isNotEmpty) {
              if ((n.contains(name)) && ((p.contains(password)))) {
                print("Congrets pass and name equals...");
              } else {
                print("Dont match something...lets try again.");
                break againcode;
              }
            } else {
              print("Please give type, name, password.");
              break againcode;
            }
            coderun++;
          } else {
            stdout.write(" ");
          }
        }
      }
      print("");
    }
  }
}
