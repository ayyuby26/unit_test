class KelasPintar {
  String cariKata(String text) {
    var results = <String>[];
    var keywords = ["sang gajah", "serigala", "harimau"];
    final lowerText = text.toLowerCase();

    for (var e in keywords) {
      final count = e.allMatches(lowerText).length;
      for (var i = 0; i < count; i++) {
        results.add(e);
      }
    }

    final result = results.join(" - ");
    return (result);
  }

  int cariSiCaca(List<int> x) {
    int getSmallest(List<int> x) {
      int small = 0;
      for (var i = 0; i < x.length; i++) {
        final item1 = x[i];
        for (var a = 0; a < x.length; a++) {
          final item2 = x[a];
          if (item1 <= item2) {
            if (a + 1 == x.length) {
              small = item1;
            }
          } else {
            break;
          }
        }
      }
      return small;
    }

    sorting(List<int> x) {
      var small = <int>[];
      if (x.length == 1) {
        small.add(x[0]);
      } else {
        final smallest = getSmallest(x);
        small.add(smallest);
        x.removeWhere((e) => e == smallest);
        final loopList = sorting(x);
        small.addAll(loopList);
      }
      return small;
    }

    int? getSmallestNonExistent(List<int> x) {
      if (x.length == 1) {
        return x[0];
      } else {
        for (var i = 0; i < x.length; i++) {
          final item1 = x[i] + 1;
          if (!x.contains(item1)) {
            return item1;
          }
        }
      }
    }

    final sorted = sorting(x);
    final result = getSmallestNonExistent(sorted) ?? 0;
    return result;
  }
}
