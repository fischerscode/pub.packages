import 'package:code_builder/code_builder.dart';

import 'types.dart';

/// Represents types with wrappers defined in [stdlib/collection](https://pub.dev/documentation/dart_eval/latest/dart_eval.stdlib.collection/dart_eval.stdlib.collection-library.html)
enum CollectionType implements AnalyzedType {
  linkedHashMap;

  @override
  Expression wrap(Expression inner) {
    return refer('\$${name[0].toUpperCase()}${name.substring(1)}')
        .property('wrap')
        .call([inner]);
  }
}
