import 'package:code_builder/code_builder.dart';

import 'types.dart';

/// Represents types with wrappers defined in [stdlib/convert](https://pub.dev/documentation/dart_eval/latest/dart_eval.stdlib.convert/dart_eval.stdlib.convert-library.html)
enum ConvertType implements AnalyzedType {
  codec,
  converter,
  encoding,
  jsonCodec,
  jsonDecoder,
  jsonEncoder,
  utf8Codec,
  utf8Decoder,
  ;

  @override
  Expression wrap(Expression inner) {
    return refer('\$${name[0].toUpperCase()}${name.substring(1)}')
        .property('wrap')
        .call([inner]);
  }
}
