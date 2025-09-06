import 'dart:convert'; // untuk JSON encode/decode

void main() {
  // ----------------------------
  // String -> int / double
  // ----------------------------
  String angkaStr = "42";
  String desimalStr = "3.14";

  int angka = int.parse(angkaStr);
  double desimal = double.parse(desimalStr);

  print("String -> int: $angka, String -> double: $desimal");

  // tryParse (aman jika string tidak valid)
  int? angka2 = int.tryParse("abc");
  print("int.tryParse('abc') = $angka2"); // null

  // ----------------------------
  // int / double -> String
  // ----------------------------
  int umur = 20;
  double tinggi = 175.567;

  String umurStr = umur.toString();
  String tinggiStr = tinggi.toStringAsFixed(2); // 2 digit desimal

  print("int -> String: $umurStr, double -> String: $tinggiStr");

  // ----------------------------
  // int <-> double
  // ----------------------------
  int angkaInt = 10;
  double angkaDouble = angkaInt.toDouble(); // int -> double
  int angkaInt2 = angkaDouble.toInt();      // double -> int

  print("int -> double: $angkaDouble, double -> int: $angkaInt2");

  // ----------------------------
  // List -> Set -> List
  // ----------------------------
  List<int> angkaList = [1, 2, 2, 3];
  Set<int> angkaSet = angkaList.toSet(); // hapus duplikat
  List<int> newList = angkaSet.toList();

  print("List: $angkaList");
  print("Set: $angkaSet");
  print("List baru dari Set: $newList");

  // ----------------------------
  // Map <-> JSON
  // ----------------------------
  Map<String, dynamic> user = {
    "nama": "Budi",
    "umur": 21,
  };

  // Map -> JSON String
  String jsonStr = jsonEncode(user);
  print("Map -> JSON String: $jsonStr");

  // JSON String -> Map
  Map<String, dynamic> userMap = jsonDecode(jsonStr);
  print("JSON String -> Map: $userMap");
}
