String globalVar = "Saya global"; // bisa diakses di mana saja

void main() {
  
  print(globalVar); // bisa

  if(true){
    String BlockVar="Saya Blok Var";//hany didalam blok/if ini
    print(BlockVar);
  }
  printLocal();
}

void printLocal() {
  print(globalVar); // bisa
  String localVar="Saya Lokal";//hanya bisa di fungsi ini
  print(localVar);
}



