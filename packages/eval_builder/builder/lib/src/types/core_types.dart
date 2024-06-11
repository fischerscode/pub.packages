import 'package:code_builder/code_builder.dart';

import 'types.dart';

/// Represents types with wrappers defined in [stdlib/core](https://pub.dev/documentation/dart_eval/latest/dart_eval.stdlib.core/dart_eval.stdlib.core-library.html)
enum CoreType implements AnalyzedType {
  bool,
  comparable,
  dateTime,
  double,
  duration,
  future,
  int,
  iterable,
  list,
  map,
  mapEntry,
  match,
  null$,
  num,
  object,
  pattern,
  regExp,
  regExpMatch,
  stackTrace,
  string,
  stringBuffer,
  uri,
  ;

  @override
  Expression wrap(Expression inner) {
    Reference ref;
    switch (this) {
      case null$:
        return refer('\$null').call([]);
      case bool:
      case double:
      case int:
      case num:
        ref = refer('\$$name');
      default:
        ref = refer('\$${name[0].toUpperCase()}${name.substring(1)}');
    }

    switch (this) {
      case bool:
      case double:
      case int:
      case num:
      case object:
      case string:
        return ref.call([inner]);
      default:
        return ref.property('wrap').call([inner]);
    }
  }
}
