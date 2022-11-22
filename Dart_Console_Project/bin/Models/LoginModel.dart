class LoginModel {
  String password = "", name = "", type = "";
  Map<String, String> logMap = {};

  void showlogValue(String name, String password) {
    logMap.addAll({name: password});
  }

  String getlogName() {
    for (String str in logMap.keys) {
      name += str + ",";
    }
    name = name.replaceAll(",", " ");
    return name;
  }

  String getlogPassword() {
    for (String str in logMap.values) {
      password += str + ",";
    }
    password = password.replaceAll(",", " ");
    return password;
  }
}
