import 'dart:io';
import 'dart:async';

void main() async {
  //1
  print("1. List");
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(list.getRange(0, 10));

  //2
  print("\n2. list multidimensi");
  var data = [
    ["001", "Akhmal Dimas", "Sleman", "Gaming"],
    ["002", "Dimas Pratama", "Yogyakata", "Berkebun"]
  ];
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 4; j++) {
      stdout.write("${data[i][j]} ");
    }
    print("");
  }

  //3
  print("\n3. Ubah procedural ke class beserta setter getter.");

  lingkaran luas = new lingkaran();
  luas.setradius(7);
  print(luas.getluas());

  //5
  print("\n5. Future delay ");
  print("Nama");
  fetchdata();
  print("Saya");

  //6
  print("\n6. async, await, future");
  print("Menyanyi, mulai");
  await line1();
  await line2();
  await line3();
}

//3
class lingkaran {
  double? r;
  double phi = 3.14;
  void setradius(double? r) {
    this.r = r;
  }

  double getluas() {
    return phi * r! * r!;
  }
}

//5
Future<void> fetchdata() {
  return Future.delayed(Duration(seconds: 2), () => print("Adit"));
}

//6
Future<void> line1() {
  return Future.delayed(
      Duration(seconds: 1), () => print("Pelagi-pelangi alangkah indahmu"));
}

Future<void> line2() {
  return Future.delayed(
      Duration(seconds: 2), () => print("Merah kuning hijau"));
}

Future<void> line3() {
  return Future.delayed(
      Duration(seconds: 1), () => print("dilangit yang biru"));
}
