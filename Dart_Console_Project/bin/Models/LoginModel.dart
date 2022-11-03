class LoginModel {
  String name = "", password = "";
  Map<String, String> loginDetails = {};
  void showValue(String name, String password) {
    loginDetails.addAll({name: password});
  }

  String getName() {
    for (String str in loginDetails.keys) {
      name += str + ",";
    }
    name = name.replaceAll(",", " ");
    return name;
    // print(name);
  }

  String getPassword() {
    for (String str in loginDetails.keys) {
      password += str + ",";
    }
    password = password.replaceAll(",", " ");
    return password;
    // print(name);
  }
}
