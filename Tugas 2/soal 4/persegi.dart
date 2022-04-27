import 'bangun_datar.dart';

class persegi extends bangun_datar {
  double? r;
  persegi(double? sisi) {
    r = sisi;
  }

  @override
  double? keliling() => 4 * r!;
  double? luas() => r! * r!;
}
