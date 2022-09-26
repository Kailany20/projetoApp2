import 'package:flutter/material.dart';
import 'package:projeto_2/screens/cadastre.dart';
import 'package:projeto_2/screens/login.dart';
import 'package:projeto_2/screens/tela_inicial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 39, 232, 139)),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context) => Home(),
        "/login":(context) => Login(),
        "/cadastre":(context) => Cadastre(),
        "/telainicial":(context) => TelaInicial(),

      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFc67c9d),
        title: Text("Help list for mothers"),
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Olá mamãe',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 40,
              color: Color(0xFFc67c9d),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFc67c9d),
                onPrimary: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
             Navigator.pushNamed(context,"/login");
            },
            child: Text('Login'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: () {
              Navigator.pushNamed(context,"/cadastre");
            },
            child: const Text('Não é usuário? Cadastre-se.'),
          ),
        ],
      ),
    );
  }
}