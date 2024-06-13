import 'dart:core' as core3 show double;
import 'dart:core' as core hide int, double, Future;
import 'dart:core' as core2 show int;

import 'prefix_resolver_test_lib1.dart' as l;
import 'prefix_resolver_test_lib3.dart' as lib3;

class Lib2 {
  late l.Lib1 test;
  l.Lib1? test2;

  late lib3.Future f;
}
