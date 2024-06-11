import 'package:code_builder/code_builder.dart';

import 'types.dart';

/// Represents types with wrappers defined in [stdlib/async](https://pub.dev/documentation/dart_eval/latest/dart_eval.stdlib.async/dart_eval.stdlib.async-library.html)
enum AsyncType implements AnalyzedType {
  completer,
  stream,
  streamController,
  streamSink,
  streamSubscription,
  streamTransformer,
  streamView,
  ;

  @override
  Expression wrap(Expression inner) {
    return refer('\$${name[0].toUpperCase()}${name.substring(1)}')
        .property('wrap')
        .call([inner]);
  }
}
