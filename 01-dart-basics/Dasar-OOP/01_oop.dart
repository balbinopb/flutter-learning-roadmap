

// Class = blueprint atau cetakan untuk membuat object
class Person {
  // properties = data yang dimiliki setiap person
  String name; // nama orang
  int age;     // umur orang

  // constructor = method khusus untuk membuat object
  // saat kita buat object, kita bisa langsung isi name dan age
  Person(this.name, this.age);

  // method = kemampuan atau aksi yang bisa dilakukan object
  void greet() {
    print("Halo, nama saya $name dan umur saya $age tahun.");
  }
}

// Inheritance = pewarisan sifat dari parent Person
// Student adalah turunan dari Person
// Artinya Student punya semua property dan method dari Person
class Student extends Person {
  String school; // tambahan property khusus Student

  // constructor Student
  // 'super' = panggil constructor Person supaya name dan age ikut terisi
  Student(String name, int age, this.school) : super(name, age);

  // override method greet() dari Person
  // artinya kita buat versi greet() yang baru untuk Student
  @override
  void greet() {
    print("Halo, saya $name, umur $age, sekolah di $school.");
  }
}

// Encapsulation = menyembunyikan data agar aman
class BankAccount {
  double _balance = 0; // private (diawali _) -> tidak bisa diakses langsung dari luar

  // method untuk menambah saldo
  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  // method untuk mengurangi saldo
  void withdraw(double amount) {
    if (amount <= _balance) _balance -= amount;
  }

  // getter untuk membaca saldo
  double get balance => _balance; // bisa diakses tapi tidak bisa diubah langsung
}

void main() {
  // Membuat object dari class Person
  var person1 = Person("Budi", 25);
  person1.greet(); // panggil method greet()
  

  // Membuat object dari class Student
  var student1 = Student("Andi", 18, "SMA1 Bandung");
  student1.greet(); // panggil method greet() versi Student


  // Contoh Encapsulation dengan BankAccount
  var account = BankAccount();
  account.deposit(1000);  // tambah saldo 1000
  account.withdraw(300);  // ambil saldo 300
  print("Saldo akhir: ${account.balance}");
  // Output: Saldo akhir: 700.0
}
