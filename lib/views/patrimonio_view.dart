import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/patrimonio_controler.dart';

class PatrimonioView extends StatelessWidget {
  PatrimonioView({super.key});

  final PatrimonioControler controler = Get.put(PatrimonioControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patrimônios'),
      ),
    );
  }
}