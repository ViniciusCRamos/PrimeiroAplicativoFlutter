import 'package:flutter/material.dart';
import 'package:untitled1/Usuario.dart';

class Principal extends StatefulWidget {
  const Principal({super.key, required this.title});
  final String title;

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  Usuario usuario =  Usuario();

  void _funcaoIncrementar() {
    setState(() {
      usuario.contador++;
    });
  }

  _funcaoAlimentarUsuario(String Nome, String Senha) {
    setState(() {
      usuario.Nome = Nome;
      usuario.Senha = Senha;
    });
  }

 _corpo(){
  return Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         const Text(
           'Essa e a quantidade de vezes que voce apertou o botao:',
         ),
         Text(
           usuario.contador.toString(),
           style: Theme.of(context).textTheme.headline4,
         ),
       ],
     ),
   );
 }

  _barraTopo(){
  return AppBar(
    title: Text(widget.title),
  );
}

_botaoIncrementador(){
 return FloatingActionButton(
    onPressed: _funcaoIncrementar,
    tooltip: 'Incrementa',
    child: const Icon(Icons.add),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _barraTopo(),
      body: _corpo(),
      floatingActionButton: _botaoIncrementador() ,
    );
  }
}
