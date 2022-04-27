import 'persegi.dart';
import 'lingkaran.dart';

void main() {
  persegi persegi1 = new persegi(5);
  lingkaran lingkaran1 = new lingkaran(4);

  print("Lingkaran");
  print("Keliling : ${lingkaran1.keliling()}");
  print("Luas     : ${lingkaran1.luas()}");

  print("Persegi");
  print("Keliling : ${persegi1.keliling()}");
  print("Luas     : ${persegi1.luas()}");
}
