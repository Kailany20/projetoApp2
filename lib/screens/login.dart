import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        backgroundColor: Color(0xFFc67c9d),
        title: const Text("Bem vinda"),
      ),
      
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
               validator: (text)=> (text!.length < 3)
              ?"O nome deve conter pelo menos 2 caracteres":null,
              decoration: InputDecoration(
                label: Text(
                  "Usuário",
                  ),
               hintText: "Digite seu usuário",

                labelStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Color(0xFFc67c9d),
                ),
                icon: Icon(
                  Icons.person,
                 color: Color(0xFFc67c9d),
                  size: 40,
                ),
              ),
            ),
            TextFormField(
              validator: (text)=> (text!.length < 3)
              ?"A senha deve ter ao menos 3 caracters":null,
              decoration: InputDecoration(
                label: Text(
                  "Senha",
                  ),
                  hintText: "Digite sua senha",
                  labelStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Color(0xFFc67c9d),
                  ),
                icon: Icon(
                  Icons.key,
                  color: Color(0xFFc67c9d),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFc67c9d),
                onPrimary: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
             Navigator.pushNamed(context,"/telainicial");
            },
            child: Text('Entrar'),
          ),
          ],
        ),
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fundo.jpeg"),
      ),
      ),
      ),
    );
  
  }
}
