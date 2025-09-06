import 'dart:io';
// Keduanya dipakai untuk nilai yang tidak bisa diubah (immutable), tapi ada perbedaan:

// final
// Nilai hanya bisa diisi sekali.
// Nilai bisa ditentukan saat runtime.

// const
// Nilai harus sudah diketahui di compile-time (sebelum program jalan).
// Cocok untuk nilai konstan yang tetap (misalnya angka, string literal)


//contoh: hasil dari func ini kita tahu nilainya ketika program di jalankan jadi pake final
int multiply(int a,int b) => a*b;


void main() {
  //untuk ini pake const karena sebelum program di run sudah diketahui nilainya
  // 
  const int number1 = 20; 

  stdout.write("Masukkan angka: ");
  String? input = stdin.readLineSync();
  int? number = int.tryParse(input ?? ""); 

  final res = multiply(number1, number!); 

  print("number1: $number1");
  print("input 2: $number");
  print("Multiplication: $res");
}

// final → nilai ditentukan saat runtime, tidak bisa diubah referensinya.
// const → nilai harus fix di compile-time, benar-benar konstan/immutable.
