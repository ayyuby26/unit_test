import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/kelas_pintar.dart';

void main() {
  group("Periksa Kelas Pintar", () {
    final kp = KelasPintar();
    const cerita =
        "Berikut adalah kisah sang gajah. Sang gajah memiliki teman serigala bernama DoeSang. Gajah sering dibela oleh serigala ketika harimau mendekati gajah.";
    test("cari kata", () {
      expect(kp.cariKata(cerita),
          "sang gajah - sang gajah - serigala - serigala - harimau");
    });
    test("cariSiCaca", () {
      expect(kp.cariSiCaca([5, 2, 8, 4, 3, 10]), 6);
    });
  });
}
