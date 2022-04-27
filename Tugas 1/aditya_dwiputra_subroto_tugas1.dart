import 'dart:io';

void main() {
  //No 2 Membuat kalimat dari beberapa Variabel
  print("\n2. Membuat kalimat dari beberapa Variabel");
  var pertama = "Flutter ";
  var kedua = "is ";
  var ketiga = "Awesome";
  print(pertama + kedua + ketiga);

  //No 3 Mengakses kalimat dalam String
  print("\n3. Mengakses kalimat dalam String");
  var kalimat = "Belajar Flutter";
  var contoh = kalimat[2] + kalimat[3];
  String kataawal = kalimat.substring(0, 7);
  String kataakhir = kalimat.substring(8, 15);

  print("Contoh: " + contoh);

  print("Kata 1: " + kataawal);

  print("Kata 2: " + kataakhir);

  //No 4 Input dan Output
  print("\n4. Input dan Output");
  String? namadepan = null;
  String? namabelakang = null;
  //input
  stdout.write("Masukkan nama depan : ");
  namadepan = stdin.readLineSync();
  stdout.write("Masukkan nama belakang  : ");
  namabelakang = stdin.readLineSync();
  //output
  print("\nNama Lengkap : $namadepan $namabelakang");

  //No 5 Membuat Segitiga siku-siku (loop)
  print("\n5. Membuat Segitiga siku-siku (loop)");
  for (var i = 0; i < 4; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }

  //No 6 Loop dan Conditional
  print("6. Loop dan Conditional");
  var sifat;
  for (var i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      if (i % 3 == 0) {
        sifat = "Skip";
      } else {
        sifat = "Genap";
      }
    } else {
      sifat = "Ganjil";
    }
    stdout.write("$i - $sifat");

    print("");
  }

  //No 7 Buatlah Fungsi menampilkan tulisan "Selamat Malam"
  print("\n7. Buatlah Fungsi menampilkan tulisan ");
  selamatmalam();

  //No 8 Buatlah Fungsi dengan parameter(nama, hobby)
  print("\n8. Buatlah Fungsi dengan parameter(nama, hobby)");
  namahobi("Aditya", "bermain video games");
}

selamatmalam() {
  print("Selamat Malam");
}

namahobi(var nama, var hobi) {
  print("Nama Saya ($nama), saya memiliki hobby ($hobi)");
}
