import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyRowColumn extends StatelessWidget {
  const MyRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
            'https://upload.wikimedia.org/wikipedia/id/thumb/d/d8/Lambang_Partai_Demokrasi_Indonesia_Perjuangan.svg/270px-Lambang_Partai_Demokrasi_Indonesia_Perjuangan.svg.png'),
      ],
    );
  }
}
