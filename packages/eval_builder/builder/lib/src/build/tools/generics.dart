import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:eval_builder/src/build/tools/dart_type_to_code.dart';

extension ReferableTypeParameterElement on TypeParameterElement {
  code.Reference refer() {
    return code.TypeReference((b) => b
      ..symbol = name
      ..bound = bound?.refer());
  }
}
