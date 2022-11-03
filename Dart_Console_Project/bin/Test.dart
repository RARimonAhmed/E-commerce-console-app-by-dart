import 'dart:io';

void main() {
  // int count = 1;
  // print("Assalamualaikum...");
  // for (int i = 1; i <= 5; i++) {
  //   for (int j = 1; j <= 5; j++) {
  //     if (i == 1 || i == 5 || j == 1 || j == 5) {
  //       stdout.write("**");
  //     } else if (i != 1 || i != 5 || j != 1 || j != 5) {
  //       if (count <= 1) {
  //         stdout.writeln("Rimon");
  //         stdout.writeln("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         stdout.write("Rimon");
  //         count++;
  //       } else {
  //         stdout.write("  ");
  //       }
  //     }
  //   }
  //   print("");
  // }

  //Map practice...
  String name, password;
  Myclass mc = new Myclass();
  while (true) {
    print("enter your name : ");
    name = stdin.readLineSync()!;
    print("enter your password : ");
    password = stdin.readLineSync()!;
    if (name == "X") {
      break;
    }
    mc.showValue(name, password);
  }
  mc.showDetails();
  print(mc.name);
  ViewClass vc = new ViewClass();
  vc.getValue(mc.name);
}

class Myclass {
  String name = "", password = "";
  Map<String, String> loginDetails = {};
  void showValue(String name, String password) {
    loginDetails.addAll({name: password});
    print(loginDetails.keys);
    print(loginDetails.values);
  }

  String showDetails() {
    for (String str in loginDetails.keys) {
      name += str + ",";
    }
    name = name.replaceAll(",", " ");
    return name;
    // print(name);
  }
}

class ViewClass {
  String na = "", p = "";
  void getValue(String n) {
    print("Enter name : ");
    na = stdin.readLineSync()!;
    print("Enter password : ");
    p = stdin.readLineSync()!;
    print("Your enterd name is : $n");
    if (n.contains(na)) {
      print("True");
    } else {
      print("False");
    }
  }
}
