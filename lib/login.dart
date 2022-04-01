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
                    color: Colors.blue,
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
                      color: Colors.white,
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
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                /* FimSenha */
                /* RecuperarSenha */
                Container(
                  height: 48,
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Recuperar senha",
                    textAlign: TextAlign.right,
                  ),
                ),
                /* FimRecuperarSenha */
                /* InicioBotao */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text(
                        "Entrar".toUpperCase(),
                        style: TextStyle(fontSize: 17),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.fromLTRB(160, 20, 160, 20),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (email == "mahki@hotmail.com" &&
                            password == "1234") {
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          Navigator.of(context).pushReplacementNamed('/');
                        }
                      },
                    ),
                  ],
                ),
                /* FimBotao */
                SizedBox(
                  height: 10,
                ),
                /* IniciBotaoFace */
                Container(
                  height: 45,
                  width: 388,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 42, 71, 133),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: Icon(Icons.facebook),
                  ),
                ),
                /* FimBotaoFace */
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
