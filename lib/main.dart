import 'package:flutter/material.dart';
import 'produtos.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView com Imagens"),),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Produtos(),
        ),
        ),
    )
  );
}
