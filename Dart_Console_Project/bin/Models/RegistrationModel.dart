class RegitrationModel {
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
  }

  String getPassword() {
    for (String str in loginDetails.values) {
      password += str + ",";
    }
    password = password.replaceAll(",", " ");
    return password;
  }
}
