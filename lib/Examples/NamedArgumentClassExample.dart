import 'package:flutter/material.dart';

class NamedArgumentClassExample {
  String foo;
  int bar;
  String foo1;

  NamedArgumentClassExample({@required this.foo, this.bar, this.foo1 = 'Default Value'});
  //Usage example
  //NamedArgumentClassExample(foo: 'Example String');
}
