// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:source_span/source_span.dart';

import '../../visitor/css.dart';
import 'node.dart';

class CssComment implements CssNode {
  final String text;

  final SourceSpan span;

  CssComment(this.text, {this.span});

  /*=T*/ accept/*<T>*/(CssVisitor/*<T>*/ visitor) =>
      visitor.visitComment(this);

  String toString() => text;
}