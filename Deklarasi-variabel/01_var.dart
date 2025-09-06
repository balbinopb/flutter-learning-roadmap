

// var digunakan untuk mendeklarasikan variabel tanpa harus langsung menentukan tipenya
// Namun, begitu diberikan nilai pertama kali, tipe variabel akan dikunci (inferred type atau tidak bisa diubah lagi ke tipe data lain).
void main() {
  var name = "Budi"; // otomatis jadi String sudah diberi nilai/value
  name = "Andi"; // boleh diubah (masih String)
  //name = 123; // error, karena sudah terkunci sebagai String

  var age; // kalau tidak diberi nilai, tipenya dynamic
  age = 20; // sekarang age = int
  age = "dua puluh"; // sekarang age = String (karena tipenya dynamic)
}
