






import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:punchin/database/database.dart';
import 'package:punchin/pages/signup.dart';
import '../database/validate.dart';
import '../widgets/bottomnavigatorwidget.dart';
import 'homepage.dart';


class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key, }) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  final _formKey = GlobalKey<FormState>();
  late Validate validate = Validate();
  late Storage storage = Storage();

  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController passWord = TextEditingController();
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Login',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  controller: userName,
                      validator: validate.validateEmail,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  controller: passWord,
                  validator: validate.validatePassWord,
                  obscureText: true,
                  decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Password',
               ),
                ),
            ),





            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: ()   {
                if(_formKey.currentState!.validate()){
                  Future<User?> users =  storage.loginUsingEmailPassword(email: userName.text, password: passWord.text, context: context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  BotNavWid()),
                    );
                }

                  },
                child: const Text('Login')


              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MySignupPage()),
                );
              },
              child: const Text('Sign-up'),
            ),




          ],
        ),
      ),
    );
  }
}



