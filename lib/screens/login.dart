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
            TextField(
              decoration: InputDecoration(
                label: Text("Usuário"),
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
                label: Text("Senha"),
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
      ),
      
    );
  
  }
}