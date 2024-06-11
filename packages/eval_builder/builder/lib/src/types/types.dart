import 'package:code_builder/code_builder.dart';

abstract class AnalyzedType {
  Expression wrap(Expression inner);
}
