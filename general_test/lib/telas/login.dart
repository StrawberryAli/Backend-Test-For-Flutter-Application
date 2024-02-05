import 'package:flutter/material.dart';

class Tela_Login extends StatefulWidget{
  const Tela_Login({super.key});
  @override
  State<Tela_Login> createState() => _State_Tela_Login();
}

class _State_Tela_Login extends State<Tela_Login>{
  TextEditingController? email_controller;
  TextEditingController? password_controller;
  Future<void> tryLogin() async{

  }
  @override
  void initState() {
    email_controller=TextEditingController();
    password_controller=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(controller: email_controller,),
            TextField(controller: password_controller,),
            ElevatedButton(
              onPressed: () async{
                await tryLogin();
              },
              child: (const Text('Login')),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cadastro');
              },
              child: (const Text('Registrar nova conta')),
            ),
          ],
        )
      ),
    );
  }
}