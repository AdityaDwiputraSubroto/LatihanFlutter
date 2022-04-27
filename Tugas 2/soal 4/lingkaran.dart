import 'bangun_datar.dart';

class lingkaran extends bangun_datar {
  double? r;
  lingkaran(double? sisi) {
    r = sisi;
  }

  @override
  double? keliling() => 2 * 3.14 * r!;
  double? luas() => 3.14 * r! * r!;
}
