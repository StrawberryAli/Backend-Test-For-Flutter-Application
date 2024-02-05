import 'package:flutter/material.dart';
import 'package:general_test/telas/cadastro.dart';
import 'package:general_test/telas/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: <String,WidgetBuilder>{
        '/login':(BuildContext context) => const Tela_Login(),
        '/cadastro':(BuildContext context) => const Tela_Cadastro()
      },
    );
  }
}
