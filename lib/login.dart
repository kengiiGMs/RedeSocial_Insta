import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /* IconePerfil */
                SizedBox(
                  width: 118,
                  height: 118,
                  child: Icon(
                    Icons.account_circle,
                    size: 118,
                    color: Color.fromARGB(255, 53, 0, 62),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                /* FimIconePerfil */
                /* InicioUsuario */
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                /* FimUsuario */

                /* InicioSenha */
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(
                  height: 48,
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Recuperar senha",
                    textAlign: TextAlign.right,
                  ),
                ),
                Container(
                  width: 700,
                  height: 40,
                  child: RaisedButton(
                    onPressed: () {
                      if (email == "mahki@hotmail.com" && password == "1234") {}
                    },
                    child: Text("Entrar"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                /* FimSenha */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
