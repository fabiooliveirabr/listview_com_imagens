//    produtos.dart
import 'package:flutter/material.dart';

class Produtos extends StatefulWidget {
  const Produtos({super.key});

  @override
  State<Produtos> createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  final listaProdutos = [
    {'nome':'Smartphone Zephone 7' , 'preco':'1599,90' , 'imagem':'asus.png'},
    {'nome':'Smartphone Samsung A23s' , 'preco':'899,90' , 'imagem':'samsung.jpg'},
    {'nome':'Smartphone Xiaomi Redmi 10' , 'preco':'1899,90' , 'imagem':'xiaomi.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaProdutos.length,
      itemBuilder: (context, i){
        var dados = listaProdutos[i];
        return Column(
          children: [
            Row(
              children: [
                Image.asset("assets/"+dados['imagem'].toString(), width: 100,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dados['nome'].toString(), 
                      style: TextStyle(
                        fontSize: 25, 
                        fontWeight: FontWeight.bold),
                      ),
                    Text("R\$"+dados['preco'].toString(),
                    style: TextStyle(fontSize: 18),),
                  ],
                ),

              ],),
              Divider(color:  Color.fromARGB(255, 127, 127, 127),),
          ],
        );
      },
    );
  }
}