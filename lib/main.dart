import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lab_inflearn_2/screen/home_screen.dart';

void main() {
  runApp(ProviderScope(
    child: MaterialApp(
      home: HomeScreen(),
    ),
  ));
}
