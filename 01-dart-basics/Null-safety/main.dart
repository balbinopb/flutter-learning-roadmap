void main() {
  // String? (nullable) -> bisa null
  String? nama;
  print("Nama (awal): $nama"); // null
  nama = "Budi";
  print("Nama (setelah diisi): $nama");




  // String (non-nullable) -> tidak boleh null
  String alamat = "Bandung";
  print("Alamat: $alamat");
  // alamat = null; // Error kalau di uncomment

  // Operator ! (null assertion) -> paksa ambil nilai non-null
  String? kota;
  kota = "Bandung";
  print("Kota (pakai !): ${kota!}");
  // kalau kota = null, baris di atas akan runtime error

  // Operator ?? (null-coalescing) -> kasih default kalau null
  String? hobi;
  print("Hobi: ${hobi ?? "Tidak ada hobi"}"); // default
  hobi = "Ngoding";
  print("Hobi: ${hobi?? "Tidak ada hobi"}"); // ambil nilai sebenarnya


}
