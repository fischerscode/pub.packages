import 'package:code_builder/code_builder.dart';

Library createPartFile(String baseFile, List<Spec> body) {
  return Library(
    (b) => b
      ..directives.add(Directive.partOf(baseFile))
      ..body.addAll(body),
  );
}
