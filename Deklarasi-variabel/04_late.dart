

// Digunakan ketika kita ingin menunda inisialisasi variabel, 
// tapi tetap memastikan bahwa variabel itu pasti akan diisi sebelum dipakai

late String name;

void main() {
  // print(name); // error: belum diinisialisasi
  name = "Budi"; 
  print(name); // aman, sudah diisi
}
