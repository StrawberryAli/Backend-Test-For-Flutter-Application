import 'package:flutter/material.dart';
import 'package:general_test/API/user_manager.dart';

class Tela_Cadastro extends StatefulWidget{
  const Tela_Cadastro({super.key});
  @override
  State<Tela_Cadastro> createState() => _State_Tela_Cadastro();
}

class _State_Tela_Cadastro extends State<Tela_Cadastro>{
  TextEditingController? username_controller;
  TextEditingController? email_controller;
  TextEditingController? password_controller;
  TextEditingController? confirm_password_controller;

  Future<void> criarUsuario() async{
    try{
      Map<String,dynamic> request={
        'username':username_controller?.text,
        'email':email_controller?.text,
        'password':password_controller?.text,
        'id':1
      };
      if(await createUser(request)!=null){
        Navigator.pop(context);
      };
    }
    catch(e){
      return;
    }
    return;
  }

  @override
  void initState() {
    username_controller=TextEditingController();
    email_controller=TextEditingController();
    password_controller=TextEditingController();
    confirm_password_controller=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(controller: username_controller,),
            TextField(controller: email_controller,),
            TextField(controller: password_controller,),
            TextField(controller: confirm_password_controller,),
            ElevatedButton(
              onPressed:() async{
                if((username_controller?.text != null)&&(email_controller?.text != null)
                &&(password_controller?.text != null)&&(confirm_password_controller?.text == password_controller?.text)){
                  await criarUsuario();
                }
              }, 
              child: const Text('Cadastrar')
            )
          ],
        ),
      ),
    );
  }
}