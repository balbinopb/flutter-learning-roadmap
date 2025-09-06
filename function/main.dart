
// Function tanpa parameter dan tanpa return
// hanya menjalankan aksi (print) tanpa mengembalikan nilai
void hellWorld() {
  print("Hello World!!"); // Menampilkan teks di console
}

// Function dengan parameter tapi tetap tanpa return
// Parameter = input yang diterima function
void hellWorldWithParameter(String message) {
  print(message); // Menampilkan isi parameter message
}

// Single-expression function menggunakan '=>'
// Cocok jika hanya ada 1 statement dan ingin mengembalikan nilai
int addition(int a, int b) => a + b;
// artinya: function addition menerima 2 parameter (a,b) 
// dan langsung mengembalikan hasil a + b

// Function multi-statement
// Tidak bisa pakai '=>', harus pakai { }
// Return wajib karena tipe data return = int
int max(int a, int b) {
  if (a > b) {        // jika a lebih besar dari b
    return a;         // kembalikan a
  } else {
    return b;         // jika tidak, kembalikan b
  }
}


void main() {
  int a = 9;  // variabel integer a
  int b = 10; // variabel integer b

  // Memanggil function void tanpa parameter
  hellWorld(); // Output: Hello World!!

  // Membuat string untuk dikirim ke function dengan parameter
  String message = "Hello World with parameter!!";

  // Memanggil function void dengan parameter
  hellWorldWithParameter(message); // Output: Hello World with parameter!!

  // Memanggil function dengan return
  int result = addition(a, b); // result = 9 + 10 = 19
  print("Hasil jumlah: $result"); // Output: Hasil jumlah: 19

  // Memanggil function max
  int mx = max(a, b); // mx = nilai terbesar antara a dan b = 10
  print("Max: $mx");  // Output: Max: 10
}
