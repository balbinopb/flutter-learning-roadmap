void main() {
  // int
  // dipake buat angka bulat(tanpa koma)
  int umur = 20;
  print("Umur: $umur");

  // double
  // dipake buat angka pecahan (ada koma / desimal)
  double tinggi = 175.5;
  print("Tinggi: $tinggi cm");

  // String
  // buat teks, bisa satu kata atau kalimat
  String nama = "Budi";
  String alamat = "Jakarta";
  print("Nama: $nama, Alamat: $alamat");

  // bool
  // tipe data true/false, biasanya buat kondisi
  bool isLogin = true;
  bool isAdmin = false;
  print("Login: $isLogin, Admin: $isAdmin");

  // List
  // kumpulan data dengan urutan (index mulai dari 0)
  List<String> hobi = ["Membaca", "Olahraga", "Ngoding"];
  print("Hobi pertama: ${hobi[0]}"); // ambil data pakai index
  hobi.add("Traveling"); // tambah data baru
  print("Daftar Hobi: $hobi");

  // Map
  // <key, value> -> data disimpan dengan pasangan key-value
  // biasanya dipakai kalau ambil data dari backend (JSON)
  // key biasanya String, value bisa tipe apapun (makanya pake dynamic)
  Map<String, dynamic> user = {
    "nama": "Budi",
    "umur": 21,
  };
  print("Data User: $user");
  print("Nama dari Map: ${user['nama']}");

  // Set
  // mirip List tapi cuma simpan data unik (ga bisa ada duplikat)
  Set<int> angka = {1, 2, 3, 3, 2, 4};
  print("Angka unik: $angka"); 
  angka.add(5); // tambah data baru
  print("Set setelah ditambah: $angka");
}
