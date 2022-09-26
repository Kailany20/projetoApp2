import 'package:flutter/material.dart';

class Cadastre extends StatefulWidget {
  const Cadastre({super.key});

  @override
  State<Cadastre> createState() => _CadastreState();
}

class _CadastreState extends State<Cadastre> {
  var _isObscure = true;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var celController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo usuário"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var userName = nameController.text;

          if (userName.isNotEmpty) {
            var snack = const SnackBar(
              content: Text("Usuário cadastrado com sucesso!!!"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snack);
          }
        },
        child: const Icon(
          Icons.save,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                label: const Text(
                  "Nome",
                ),
                labelStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: Color(0xFFc67c9d),
                    ),
                hintText: "Digite seu nome completo",
                icon: const Icon(
                  Icons.account_box,
                  color: Color(0xFFc67c9d),
                  size: 34,
                ),
              ),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text("Email"),
                icon: Icon(
                  Icons.email,
                  color: Color(0xFFc67c9d),
                  size: 32,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      label: Text("Telefone"),
                      icon: Icon(
                        Icons.call,
                        color: Color(0xFFc67c9d),
                        size: 32,
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: celController,
                    decoration: const InputDecoration(
                      label: Text("Celular"),
                      icon: Icon(
                        Icons.call,
                        color: Color(0xFFc67c9d),
                        size: 32,
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ],
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                label: const Text("Senha"),
                icon: const Icon(
                  Icons.password,
                  color: Color(0xFFc67c9d),
                  size: 32,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    (_isObscure) ? Icons.visibility : Icons.visibility_off,
                    color: Color(0xFFc67c9d),
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
              keyboardType: TextInputType.text,
              obscureText: _isObscure,
            ),
          ],
        ),
      ),
    );
  }
}