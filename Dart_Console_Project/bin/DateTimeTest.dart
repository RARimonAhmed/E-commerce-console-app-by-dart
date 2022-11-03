void main() {
  const List<String> list = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  try {
    DateTime d =
        DateTime.parse("2001 - ${list[0]} - 10th 00:00:00".substring(0, 21));
    print(d);
  } catch (Exception) {
    print("Exception is : $Exception");
  }
  String s = "This is Rimon";
  print(s.substring(5));
}
// print("Hi");
//   DateTime now = new DateTime(2022);
  
//   try {
//     DateTime d = DateTime.parse("2001-10-01 00:00:00");
//     print(d);
//   } catch (Exception) {
//     print("e" + Exception.toString());
//   }
  // print(now);
  // print(d);
  // print(d.day);