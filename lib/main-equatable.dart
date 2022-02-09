import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class MyClass extends Equatable {
  final int value;
  MyClass({
    required this.value,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is MyClass && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

void main() {
  final a = MyClass(value: 1);
  //final b = MyClass(value: 1);
  final b = MyClass(value: 2);

  print('a == b ' + (a == b).toString());
  print('a == a ' + (a == a).toString());
  print('b == b ' + (b == b).toString());
  //print('c == b ' + (c == b).toString());
}
