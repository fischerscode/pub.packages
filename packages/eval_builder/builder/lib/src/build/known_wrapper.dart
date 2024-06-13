import 'package:code_builder/code_builder.dart';

class KnownWrapper {
  final Expression Function(Expression inner) wrap;

  const KnownWrapper(this.wrap);
}
