import 'package:analyzer/dart/element/element.dart';

extension NamedPropertyAccessorElement on PropertyAccessorElement {
  /// Returns the [name], but without leading = for setters.
  String get actualName {
    if (isSetter) {
      return name.substring(0, name.length - 1);
    }
    return name;
  }

  /// Returns [name] in the name*g/name*s format for registration in dart_eval.
  String get dartEvalName {
    assert(isStatic);
    assert(isGetter || isSetter);
    return '$actualName*${isGetter ? 'g' : 's'}';
  }

  /// The name of the static method declared in the wrapper.
  String get wrapperMethodName {
    assert(isStatic);
    assert(isGetter || isSetter);
    return '\$${isGetter ? 'g' : 's'}\$$actualName';
  }
}

extension NamedMethodElement on MethodElement {
  /// The name of the static method declared in the wrapper.
  String get wrapperMethodName {
    return '${isPrivate ? '_' : ''}\$m\$$name';
  }
}
