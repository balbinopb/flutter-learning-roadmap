
// String Interpolation artinya menyisipkan variabel atau ekspresi ke dalam String pakai tanda $ atau ${

void main() {
  String nama = "Budi";
  int umur = 20;

  // pakai $
  print("Halo $nama, umur saya $umur");

  // kalau ada ekspresi/operasi → pakai ${ }
  print("Tahun depan umur saya ${umur + 1}");

  // bisa juga panggil method langsung
  print("Nama dalam huruf besar: ${nama.toUpperCase()}");
}
