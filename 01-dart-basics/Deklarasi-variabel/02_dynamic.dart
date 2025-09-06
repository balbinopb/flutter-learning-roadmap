



// dynamic artinya tipe benar2 bebas berubah2 kapan saja.
// Cocok banget dipakai kalau kita tidak tahu tipe data yang akan diterima (misalnya dari API)


void main() {
  dynamic data = "Hello"; 
  print(data.runtimeType); // String
  
  data = 123;//bisa ganti ke integer
  print(data.runtimeType); // int

  data = true; //bisa ganti ke boolean
  print(data.runtimeType); // bool


  // jadi dynamic tidak terkunci ke satu tipe
  // tapi hati2, bisa bikin error runtime kalau salah pakai method
  // contoh:
  print(data.length);


  // akan dapat error seperti dibawah ini

  // Unhandled exception:
  // NoSuchMethodError: Class 'bool' has no instance getter 'length'.
}
