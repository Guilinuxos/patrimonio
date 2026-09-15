import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:patrimonio/controller/patrimonio_controler.dart';

void main() {

}


class Teste extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(PatrimonioControler());



    return const Scaffold(
      
    );
  }
}