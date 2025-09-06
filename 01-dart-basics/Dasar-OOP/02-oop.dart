abstract class Shape {
  void draw(); // abstract → tidak ada body, wajib diimplementasikan
  void info() { // non-abstract -> sudah ada body
    print("Ini shape\n");
  }
}

// extends
class Circle extends Shape {
  @override
  void draw() {
    print("\nMenggambar lingkaran");
  }
  info(); //tidak wajib di-override, bisa pakai yang dari parent
}

// implements
class Square implements Shape {
  @override
  void draw() {
    print("Menggambar persegi");
  }

  @override
  void info() { // harus ditulis ulang walau parent sudah ada body
    print("Ini persegi");
  }
}


void main() {


  var g = Circle();
  g.draw(); 
  g.info(); 

  var s = Square();
  s.draw(); 
  s.info(); 

}
