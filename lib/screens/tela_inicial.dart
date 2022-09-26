import 'package:flutter/material.dart';
import 'package:projeto_2/main.dart';
import 'package:projeto_2/screens/login.dart';
class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       appBar: AppBar(
         centerTitle: true,
        backgroundColor: Color(0xFFc67c9d),
        title: const Text("Help list for mothers"),
        
       ),
    );
  }
}